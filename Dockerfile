FROM debian:latest
RUN apt-get update
RUN apt-get install -y git make
RUN git clone https://github.com/cloudflare/mmproxy.git
WORKDIR mmproxy 
RUN git submodule update --init
RUN apt-get install -y autoconf automake libtool gcc
RUN make
CMD ["/mmproxy/mmproxy"]
