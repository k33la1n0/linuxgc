## linuxgc
A little shell script to play gif's over a virtual webcam with ffmpeg and v4l2. All what you need is a Terminal (a Bash). It is recommended to use debian/ubuntu-distributionen and firefox for streaming gif's over webcam. linuxgc use the apt-software-manager in the install-script.


## Control (when your ./install.sh and ./start.sh was successful)
### Exit
Exit with `Strg c`  **BEFORE** you enter a number of the gif
### Restart
Restart wit `Strg c` **AFTER** you enter a number of the gif

## Install
install git: `sudo apt install git wget -y`

create a new dir in your home:
`mkdir ~/bin`

go in the new dir:
`cd ~/bin`

download the script:
`git clone https://github.com/k33la1n0/linuxgc`

go in the downloade dir:
`cd linuxgc`

give the install-script execute-right (x):
`sudo chmod +x install.sh`

INSTALL: `./install.sh`

## Start
you can start the script:
`./start.sh`

## The cat_hello.gif
The cat_hello.gif was created by Pusheen and published on giphy.com: `https://media.giphy.com/media/JVmYAO3MkGNiM/giphy.gif`
