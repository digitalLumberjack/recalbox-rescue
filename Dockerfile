FROM ubuntu:16.04

ENV TERM 'xterm'

RUN apt-get update && apt-get install -y build-essential qttools5-dev-tools qt5-default rsync wget cpio python unzip bc git texinfo

WORKDIR /usr/local/src/app/

ADD . /usr/local/src/app/

RUN lupdate -no-obsolete recovery/recovery.pro

RUN ./BUILDME.sh
