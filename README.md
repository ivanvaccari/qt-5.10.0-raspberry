qt-5.10.0-raspberry

This repository contains the Qt 5.10.0 precompiled binaries/lib for raspberry Pi 2 and later.
I had a lot of troubles to reach a functional build process and on the net i saw a lot of people having my same troubles.
Since i figured out how to finally build Qt on raspberry, i decided to put the result directory on the net for two reasons:
- Personal backup
- To be ready out of the box without the need to compile the entire qt toolkit (with related issues)

# Guidelines
To reach this build i followed a long series of guidelines, but the more useful are:
- http://www.tal.org/tutorials/building-qt-510-raspberry-pi-debian-stretch
- https://wiki.qt.io/Native_Build_of_Qt5_on_a_Raspberry_Pi

# needed toolkits/libs
The previous guidelines states that some package are required for compilation. Unfortunately, there are some extra library/toolkit required to be able to compile all the stuff:

- libgl1-mesa-dev, to avoid the linker error "cannot find -lgl"
- python, since at some point of the compilation process, a python script is executed.

