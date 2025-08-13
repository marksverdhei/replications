FROM nvidia/cuda:12.8.1-cudnn-devel-ubuntu24.04

RUN apt update && \
  apt upgrade -y && \
  apt install git wget libgl1 libglib2.0-0 software-properties-common -y && \
  add-apt-repository ppa:deadsnakes/ppa -y && \
  apt install python3.10-venv -y

USER ubuntu
WORKDIR /home/ubuntu
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui

WORKDIR /home/ubuntu/stable-diffusion-webui
RUN ./webui.sh --exit

CMD ["./webui.sh", "--listen"]
