ARG BASE_IMAGE=nvidia/cuda:12.8.1-cudnn-devel-ubuntu24.04
FROM ${BASE_IMAGE}

ARG GPU_ARCH=8.6

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

WORKDIR /workspace
RUN git clone https://github.com/deepbeepmeep/Wan2GP.git
WORKDIR /workspace/Wan2GP
RUN python3.10 -m venv .venv

RUN ./.venv/bin/pip install --upgrade pip
RUN ./.venv/bin/pip install torch==2.6.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/test/cu124
RUN ./.venv/bin/pip install -r /workspace/Wan2GP/requirements.txt
RUN TORCH_CUDA_ARCH_LIST=${GPU_ARCH} ./.venv/bin/pip install git+https://github.com/woct0rdho/SageAttention/ --no-build-isolation

ENTRYPOINT ["/workspace/Wan2GP/.venv/bin/python", "wgp.py", "--listen"]
# CMD ["/workspace/Wan2GP/.venv/bin/python", "wgp.py", "--listen"]
