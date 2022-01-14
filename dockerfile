FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt-get update \
    && apt install -y --no-install-recommends \
    pciutils \
    ffmpeg \
    libnvidia-gl-460 \
    libnvidia-encode-460 \
    libnvidia-encode-460 \
    nvidia-settings
RUN add-apt-repository -y ppa:obsproject/obs-studio \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    obs-studio

COPY start.sh /root/Desktop/start.sh
  