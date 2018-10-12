try:
    import concurrent.futures as futures
except ImportError:
    try:
        import futures
    except ImportError:
        futures = None

import os
import shutil
import stat
import tempfile
import zipfile
from os import path

import requests

#--- Globals ----------------------------------------------
PLUGINS = """
ack.vim https://github.com/mileszs/ack.vim
bufexplorer https://github.com/corntrace/bufexplorer
ctrlp.vim https://github.com/ctrlpvim/ctrlp.vim
mayansmoke https://github.com/vim-scripts/mayansmoke
nerdtree https://github.com/scrooloose/nerdtree
nginx.vim https://github.com/vim-scripts/nginx.vim
open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim
tlib https://github.com/vim-scripts/tlib
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-colors-solarized https://github.com/altercation/vim-colors-solarized
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-less https://github.com/groenewege/vim-less
vim-markdown https://github.com/tpope/vim-markdown
vim-pyte https://github.com/therubymug/vim-pyte
vim-snippets https://github.com/honza/vim-snippets
vim-surround https://github.com/tpope/vim-surround
vim-expand-region https://github.com/terryma/vim-expand-region
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-fugitive https://github.com/tpope/vim-fugitive
goyo.vim https://github.com/junegunn/goyo.vim
vim-zenroom2 https://github.com/amix/vim-zenroom2
syntastic https://github.com/scrooloose/syntastic
vim-repeat https://github.com/tpope/vim-repeat
vim-commentary https://github.com/tpope/vim-commentary
vim-go https://github.com/fatih/vim-go
tagbar https://github.com/majutsushi/tagbar
markdown2ctags https://github.com/jszakmeister/markdown2ctags
wmgraphviz.vim https://github.com/wannesm/wmgraphviz.vim
vim-easymotion https://github.com/Lokaltog/vim-easymotion
mark.vim https://github.com/mbriggs/mark.vim
ultisnips https://github.com/SirVer/ultisnips
vim-autoformat https://github.com/Chiel92/vim-autoformat
gruvbox https://github.com/morhetz/gruvbox
vim-gitgutter https://github.com/airblade/vim-gitgutter
vim-preview https://github.com/greyblake/vim-preview
dash.vim https://github.com/rizzatti/dash.vim
corporation https://github.com/vim-scripts/corporation
nerdtree-git-plugin https://github.com/Xuyuanp/nerdtree-git-plugin
plantuml-syntax https://github.com/aklt/plantuml-syntax
vim-better-whitespace https://github.com/ntpeters/vim-better-whitespace
vim_current_word https://github.com/dominikduda/vim_current_word
lightline.vim https://github.com/itchyny/lightline.vim
mru.vim https://github.com/vim-scripts/mru.vim
vim-abolish https://github.com/tpope/tpope-vim-abolish
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack
""".strip()

GITHUB_ZIP = '%s/archive/master.zip'

SOURCE_DIR = path.join(path.dirname(__file__), 'sources_non_forked')


def download_extract_replace(plugin_name, zip_path, temp_dir, source_dir):
    temp_zip_path = path.join(temp_dir, plugin_name)

    # Download and extract file in temp dir
    req = requests.get(zip_path)
    open(temp_zip_path, 'wb').write(req.content)

    zip_f = zipfile.ZipFile(temp_zip_path)
    zip_f.extractall(temp_dir)

    plugin_temp_path = path.join(
        temp_dir, path.join(temp_dir, '%s-master' % plugin_name))

    # Remove the current plugin and replace it with the extracted
    plugin_dest_path = path.join(source_dir, plugin_name)

    try:
        shutil.rmtree(plugin_dest_path)
    except OSError:
        pass

    shutil.move(plugin_temp_path, plugin_dest_path)

    print('Updated {0}'.format(plugin_name))


def update(plugin):
    name, github_url = plugin.split(' ')
    zip_path = GITHUB_ZIP % github_url
    download_extract_replace(name, zip_path, temp_directory, SOURCE_DIR)


if __name__ == '__main__':
    temp_directory = tempfile.mkdtemp()

    try:
        if futures:
            with futures.ThreadPoolExecutor(16) as executor:
                executor.map(update, PLUGINS.splitlines())
        else:
            [update(x) for x in PLUGINS.splitlines()]
    finally:
        shutil.rmtree(temp_directory)

    markdown2ctags_path = path.join(SOURCE_DIR,
                                    "markdown2ctags/markdown2ctags.py")
    os.chmod(
        markdown2ctags_path, stat.S_IRWXU | stat.S_IRGRP | stat.S_IWGRP
        | stat.S_IROTH | stat.S_IWOTH)
