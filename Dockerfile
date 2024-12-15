FROM ubuntu:24.04

EXPOSE 7233
EXPOSE 8233

ADD ./*.tar.gz /usr/local/bin/

CMD ["temporal", "server", "start-dev", "--ip", "0.0.0.0"]
