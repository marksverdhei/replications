ARG BASE_IMAGE=nvidia/cuda:12.8.1-cudnn-devel-ubuntu24.04
FROM ${BASE_IMAGE}

RUN apt update && \
  apt upgrade -y && \
  apt install git wget libgl1 libglib2.0-0 software-properties-common -y && \
  add-apt-repository ppa:deadsnakes/ppa -y && \
  apt install python3.10-venv -y

# For Ubuntu/Debian-based images
RUN apt-get update && \
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgomp1 \
    git \
    python3.10 \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/deepbeepmeep/Wan2GP.git
WORKDIR /workspace/Wan2GP
RUN python3.10 -m venv .venv && \
  . ./.venv/bin/activate && \
  python -m pip install --upgrade pip && \
  pip install torch==2.7.0 torchvision torchaudio && \
  pip install -r requirements.txt

RUN TORCH_CUDA_ARCH_LIST=8.6 pip install git+https://github.com/woct0rdho/SageAttention/ --no-build-isolation
