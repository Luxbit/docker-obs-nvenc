# docker-obs-nvenc
A docker container for running OBS with for streaming (Twitch, YouTube...) using NVENC hardware encoder. 
Image based on `orowu/ubuntu-desktop-lxde-vnc` to provide web VNC interface to access Ubuntu LXDE/LxQT desktop environment.

## Prerequisites
To use NVENC, you need a [compatible Nvidia card](https://developer.nvidia.com/video-encode-decode-gpu-support-matrix) and the [NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-docker) for [Docker](https://docs.docker.com/get-started/) to be setup properly on your host machine.

## Quick Start
Run the docker container and access with port 80 (webVNC) or port 5900 (VNC)
Run `docker run -p 6080:80 -p 5900:5900 luxbit/docker-obs-nvenc`
or simply use the `docker-compose.yml` config file.

Run `bash /root/Desktop/start.sh` to start obs via VNC.

## VNC Viewer
Open the vnc viewer and connect to port 5900. 
You can optionally add a password if you would like to protect vnc service by password, set environment variable `VNC_PASSWORD`, for example

`docker run -p 5900:5900 -e VNC_PASSWORD=mypassword luxbit/docker-obs-nvenc`
A prompt will ask password either in the browser or vnc viewer.

# HTTP Base Authentication
This image also provides base access authentication of HTTP via HTTP_PASSWORD

`docker run -p 6080:80 -e HTTP_PASSWORD=mypassword luxbit/docker-obs-nvenc`

# Further details
For more information please consider looking at the [base image documentation](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/) 
