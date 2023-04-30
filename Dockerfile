FROM nvidia/cuda:11.3.0-cudnn8-devel-ubuntu20.04

# Setting timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Following is needed to install python 3.8
RUN apt update && apt install --no-install-recommends -y software-properties-common 
RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt update && apt install --no-install-recommends -y \
    git curl make ssh wget openssh-client \
    python3.8 python3-pip python-is-python3 python3.8-dev \
    build-essential 

# Installing poetry
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1 \
    && update-alternatives --set python3 /usr/bin/python3.8 \
    && python3 -m pip install --upgrade pip setuptools requests \
    && python3 -m pip install poetry

# Installing packages for opencv
RUN apt update && apt install --no-install-recommends -y libgl1-mesa-dev

WORKDIR /workspace
