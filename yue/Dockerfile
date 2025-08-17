# FROM pytorch/pytorch:2.7.1-cuda11.8-cudnn9-devel
# FROM marksverdhei/snail:torch
FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
RUN apt update && apt install git-lfs curl -y

RUN git lfs install
RUN git clone https://github.com/multimodal-art-projection/YuE.git

RUN pip install -r ./YuE/requirements.txt
RUN pip install flash-attn --no-build-isolation

RUN cd YuE/inference/ && \
  git clone https://huggingface.co/m-a-p/xcodec_mini_infer
