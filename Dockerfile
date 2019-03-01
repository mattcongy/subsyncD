FROM alpine:3.8
MAINTAINER Jake Skeates <jskeates@me.com>

RUN apk upgrade -U \
 && apk add --no-cache busybox ca-certificates bash ffmpeg libva-intel-driver git python python-dev py-pip build-base \
 && pip install git+https://github.com/smacke/subsync \
 && mkdir /data/

ENTRYPOINT ["subsync"]
