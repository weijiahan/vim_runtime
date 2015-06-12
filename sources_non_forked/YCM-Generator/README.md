# YCM-Generator
This is a script to generate a ```.ycm_extra_conf.py``` file for use with [YouCompleteMe](https://github.com/Valloric/YouCompleteMe).
It works by building the project with a fake toolchain, which simply and filters compiler flags to be stored in the resulting file.

It is reasonably fast, taking ~10 seconds to generate a configuration file for the Linux kernel.

## Usage
Run ```./config_gen.py PROJECT_DIRECTORY```, where ```PROJECT_DIRECTORY``` is the root directory of your project's build system (i.e. the one containing the root Makefile, etc.)

YCM-Generator can also be used as a Vim plugin. Once installed with Vundle/NeoBundle/etc., use the ```:YcmGenerateConfig``` command to generate a config file for the current directory. This command accepts the same arguments as ```./config_gen.py```, but does not require the project directory to be specified (it defaults to the current working directory).

## Requirements and Limitations
* Requirements:
    + Python 2
    + Clang

* Supported build systems:
    + Make
    + CMake
    + Autotools

Your build system should support specifying the compiler through the ```CC```/```CXX``` environment variables, or not use an absolute path to the compiler.

Some flags present in the resulting configuration file may be mutually exclusive with each other - reading the generated file prior to use is recommended.

### Windows support
The script is currently supported under Unices (Linux, BSD, OS X) only.
Implementing Windows support consists of porting the contents of ```fake-toolchain/Unix```.
If you are interested in implementing/testing this, please open a pull request.

## Development
Patches are welcome. Please submit pull requests against the ```develop``` branch.

## License
YCM-Generator is published under the GNU GPLv3.

