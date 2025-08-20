ARG BASE_IMAGE=pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
FROM ${BASE_IMAGE}
ARG GPU_ARCH=8.6
# For Ubuntu/Debian-based images
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

ARG FORK_OWNER=deepbeepmeep

RUN git clone https://github.com/${FORK_OWNER}/Wan2GP.git
WORKDIR /workspace/Wan2GP
RUN pip install -r requirements.txt

RUN TORCH_CUDA_ARCH_LIST=${GPU_ARCH} pip install git+https://github.com/woct0rdho/SageAttention/ --no-build-isolation

CMD ["python", "wgp.py", "--listen"]
