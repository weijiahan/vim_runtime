try:
    import concurrent.futures as futures
except ImportError:
    try:
        import futures
    except ImportError:
        futures = None

import os
import shutil
import tempfile
import zipfile
import stat
from os import path

import requests

#--- Globals ----------------------------------------------
PLUGINS = """
auto-pairs https://github.com/jiangmiao/auto-pairs
ale https://github.com/w0rp/ale
vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack
ack https://github.com/mileszs/ack.vim
bufexplorer https://github.com/corntrace/bufexplorer
ctrlp https://github.com/ctrlpvim/ctrlp.vim
mayansmoke https://github.com/vim-scripts/mayansmoke
nerdtree https://github.com/scrooloose/nerdtree
nginx https://github.com/chr4/nginx.vim
open_file_under_cursor https://github.com/amix/open_file_under_cursor.vim
snipmate-snippets https://github.com/scrooloose/snipmate-snippets
tlib https://github.com/vim-scripts/tlib
vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils
vim-bundle-mako https://github.com/sophacles/vim-bundle-mako
vim-coffee-script https://github.com/kchmck/vim-coffee-script
vim-indent-object https://github.com/michaeljsmith/vim-indent-object
vim-less https://github.com/groenewege/vim-less
vim-markdown https://github.com/tpope/vim-markdown
vim-pyte https://github.com/therubymug/vim-pyte
vim-snipmate https://github.com/garbas/vim-snipmate
vim-snippets https://github.com/honza/vim-snippets
vim-surround https://github.com/tpope/vim-surround
vim-expand-region https://github.com/terryma/vim-expand-region
vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors
vim-fugitive https://github.com/tpope/vim-fugitive
goyo https://github.com/junegunn/goyo.vim
vim-zenroom2 https://github.com/amix/vim-zenroom2
vim-repeat https://github.com/tpope/vim-repeat
vim-commentary https://github.com/tpope/vim-commentary
vim-go https://github.com/fatih/vim-go
vim-gitgutter https://github.com/airblade/vim-gitgutter
gruvbox https://github.com/morhetz/gruvbox
vim-flake8 https://github.com/nvie/vim-flake8
lightline https://github.com/itchyny/lightline.vim
lightline-ale https://github.com/maximbaz/lightline-ale
vim-abolish https://github.com/tpope/tpope-vim-abolish
mru https://github.com/vim-scripts/mru.vim
vim-markdown https://github.com/plasticboy/vim-markdown
tagbar https://github.com/majutsushi/tagbar
markdown2ctags https://github.com/jszakmeister/markdown2ctags
wmgraphviz https://github.com/wannesm/wmgraphviz.vim
vim-easymotion https://github.com/Lokaltog/vim-easymotion
vim-autoformat https://github.com/Chiel92/vim-autoformat
dash https://github.com/rizzatti/dash.vim
nerdtree-git-plugin https://github.com/Xuyuanp/nerdtree-git-plugin
plantuml-syntax https://github.com/aklt/plantuml-syntax
vim-better-whitespace https://github.com/ntpeters/vim-better-whitespace
vim_current_word https://github.com/dominikduda/vim_current_word
rainbow_parentheses https://github.com/kien/rainbow_parentheses.vim
rust https://github.com/rust-lang/rust.vim
vim-solarized8 https://github.com/lifepillar/vim-solarized8.git
vim-colors-github https://github.com/cormacrelf/vim-colors-github
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
