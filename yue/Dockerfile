ARG BASE_IMAGE=pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
FROM ${BASE_IMAGE}

ENV PATH=/usr/local/cuda-12.4/bin:$PATH
ENV LD_LIBRARY_PATH=/opt/conda/lib/python3.11/site-packages/torch/lib:/usr/local/cuda-12.4/lib64:$LD_LIBRARY_PATH

RUN apt-get update && apt-get install git-lfs curl -y
RUN git lfs install
RUN git clone https://github.com/multimodal-art-projection/YuE.git

RUN cd /workspace/YuE/inference && \
  git clone https://huggingface.co/m-a-p/xcodec_mini_infer

RUN pip install -r ./YuE/requirements.txt
RUN pip install --no-build-isolation --no-cache-dir flash-attn==2.7.4.post1

WORKDIR /workspace/YuE/inference 
CMD ["python", "infer.py", \
  "--cuda_idx", "0", \
  "--stage1_model", "m-a-p/YuE-s1-7B-anneal-en-cot",\
  "--stage2_model", "m-a-p/YuE-s2-1B-general",\
  "--genre_txt", "../prompt_egs/genre.txt",\
  "--lyrics_txt", "../prompt_egs/lyrics.txt",\
  "--run_n_segments", "2",\
  "--stage2_batch_size", "4",\
  "--output_dir", "../output",\
  "--max_new_tokens", "3000",\
  "--repetition_penalty", "1.1"]
