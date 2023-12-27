# qbuild

A simple lua script to make the basics in C and C++ builds, but better.

## Usage
    lua qbuild.lua build
                   clean
                   run
                   buildrun

I strongly recommend take a look in the lua script to understand the builder, this don't take too much of your time. 

## Example

In qbuild.lua file:

    qbuild = {
        compiler = "g++",
        lang_std = "-std=c++17",
        compiler_flags = "-Wall -Wextra -Wfatal-errors -Werror -g -O3 -pipe -march=native",
        include_path = "-I\"./libs/\"",
        src_files = "./src/*.cpp ./src/Game/*.cpp",
        linker_flags = "-lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer -llua5.4",
        obj_name = "qengine",
    }

To build and run, exists the option "buildrun":

    lua qbuild.lua buildrun

