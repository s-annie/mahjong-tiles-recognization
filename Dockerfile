FROM ubuntu:20.04
FROM tensorflow/tensorflow:1.12.0-py3

RUN pip install \
    keras==2.2.4 \
    scikit-image

RUN pip install pytest

# creating user hoge
RUN useradd -m hoge
RUN gpasswd -a hoge sudo
RUN echo 'hoge:pass' | chpasswd
