FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt-get update \
    && apt install -y --no-install-recommends \
    ffmpeg \
    libnvidia-gl-495 \
    libnvidia-encode-495 
RUN add-apt-repository -y ppa:obsproject/obs-studio \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    obs-studio

COPY start.sh /root/Desktop/start.sh
  