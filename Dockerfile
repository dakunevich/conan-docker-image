FROM python:3.6.9

ENV CONAN_VER=1.8.5

RUN apt update \ 
    && pip install conan==${CONAN_VER}

# CleanUp
RUN apt-get autoremove -y \
    && apt-get clean
