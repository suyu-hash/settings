FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
    && apt install -y --no-install-recommends \
    curl sudo wget git vim gpg-agent software-properties-common apt-utils

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ARG USER=user
ARG WKDIR=/home/work

RUN echo "root:root" | chpasswd && \ 
    adduser --disabled-password --gecos "" ${USER} && \
    echo "${USER}:${USER}" | chpasswd && \
    echo "%${USER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/${USER} && \
    chmod 0440 /etc/sudoers.d/${USER}

WORKDIR ${WKDIR}
RUN chown ${USER}:${USER} ${WKDIR}
USER ${USER}


# fish
COPY fish_setting/ ${WKDIR}/fish_setting/

# ros2 humble
COPY ros2humble_setting/ ${WKDIR}/ros2humble_setting/


COPY setup.sh .

RUN sudo chmod +x setup.sh && \
    ./setup.sh 2> output.log