# Qt-5.10.0-raspberry

This repository contains the Qt 5.10.0 precompiled binaries/lib for raspberry Pi 2 and later.
I had a lot of troubles to reach a functional build process and on the net i saw a lot of people having my same troubles.
Since i figured out how to finally build Qt on raspberry, i decided to put the result directory on the net for two reasons:
- Personal backup
- To be ready out of the box without the need to compile the entire qt toolkit (with related issues)

## How to setup your raspberry
- Obviously clone this repository to get the binaries. You can put the Qt5.10 directory where you want, i choose /opt/Qt5.10
- Setup the LD_LIBRARY_PATH and PATH env varibles to point the Qt5.10 directory
  To do this, edit your .bashrc file and add these lines:
  ```
  export LD_LIBRARY_PATH=/opt/Qt5.10/lib/
  export PATH=/opt/Qt5.10/bin:$PATH
  ```
## Extra info
### Compilation guidelines
To reach this build i followed a long series of guidelines, but the more useful are:
- http://www.tal.org/tutorials/building-qt-510-raspberry-pi-debian-stretch
- https://wiki.qt.io/Native_Build_of_Qt5_on_a_Raspberry_Pi

Those guidelines states that some package are required for compilation. Unfortunately, there are some extra library/toolkit required to be able to compile all the stuff:

- libgl1-mesa-dev, to avoid the linker error "cannot find -lgl"
- python, since at some point of the compilation process, a python script is executed.

### Timing
The compilation process took AT LEAST 6 hours on a raspberry pi 2 using 3 concurrent threads. The cpu temperature reached 55°C without cooling at 17°C room temperature. With cooling (a fan over the raspberry) the cpu was 32°C as average.

## Comments
I'm extremely couriuos on who will use this build, if you find this useful please just leave a comment (or a star or everything else) ;-)
