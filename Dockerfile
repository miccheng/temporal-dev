FROM ubuntu:24.04

EXPOSE 7233
EXPOSE 8233

ARG PLATFORM_ARCH=arm64

ADD ./*linux_${PLATFORM_ARCH}.tar.gz /usr/local/bin/

CMD ["temporal", "server", "start-dev", "--ip", "0.0.0.0"]
