FROM gcr.io/kaggle-gpu-images/python:v110

RUN pip install -U pip && \
    pip install -U japanize-matplotlib xfeat texthero && \
    pip install -U gensim && \
    pip install torch===1.7.1+cu110 torchvision===0.8.2+cu110 torchaudio===0.7.2 -f https://download.pytorch.org/whl/torch_stable.html && \
    pip install -U segmentation_models_pytorch &&\
    pip install -U ete3

