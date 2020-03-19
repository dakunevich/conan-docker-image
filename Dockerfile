FROM python:3.6.9

ENV CONAN_VER=1.8.5
ENV USER=conan
ENV UID=500

RUN apt update \ 
    && pip install conan==${CONAN_VER}

# CleanUp
RUN apt-get autoremove -y \
    && apt-get clean

RUN mkdir /home/${USER} && \
    useradd -u ${UID} -d /home/${USER} ${USER} && \
    chown ${USER}:${USER} /home/${USER}

USER ${USER}

WORKDIR /home/${USER}

