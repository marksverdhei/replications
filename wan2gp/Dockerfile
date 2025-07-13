ARG BASE_IMAGE=hiyouga/pytorch:th2.6.0-cu124-flashattn2.7.4-cxx11abi0-devel
FROM ${BASE_IMAGE}
# COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
# RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN git clone https://github.com/deepbeepmeep/Wan2GP.git
WORKDIR /workspace/Wan2GP
RUN pip install -r requirements.txt


ENV SAGEATTENTION_CUDA_ARCH_LIST="8.6"
RUN pip install git+https://github.com/woct0rdho/SageAttention/
CMD python wgp.py --listen
