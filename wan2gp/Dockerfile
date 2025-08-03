ARG BASE_IMAGE=hiyouga/pytorch:th2.6.0-cu124-flashattn2.7.4-cxx11abi0-devel
FROM ${BASE_IMAGE}

# For Ubuntu/Debian-based images
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/deepbeepmeep/Wan2GP.git
WORKDIR /workspace/Wan2GP
RUN pip install -r requirements.txt

RUN TORCH_CUDA_ARCH_LIST=8.6 pip install git+https://github.com/woct0rdho/SageAttention/ --no-build-isolation
