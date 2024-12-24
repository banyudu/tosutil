FROM ubuntu:latest

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

# download and install tosutil
RUN mkdir -p /usr/local/bin && cd /usr/local/bin && wget https://tos-tools.tos-cn-beijing.volces.com/linux/tosutil && chmod a+x tosutil

CMD [ "tosutil" ]