FROM ubuntu:24.04

ARG TARGETOS
ARG TARGETARCH

EXPOSE 7233
EXPOSE 8233

ADD ./*linux_${TARGETARCH}.tar.gz /usr/local/bin/

CMD ["temporal", "server", "start-dev", "--ip", "0.0.0.0"]
