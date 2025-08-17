ARG BASE_IMAGE=pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
FROM ${BASE_IMAGE}

RUN pip install transformers accelerate peft
RUN pip install git+https://github.com/huggingface/diffusers
