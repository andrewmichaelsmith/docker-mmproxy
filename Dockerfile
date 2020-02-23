FROM debian:latest
RUN apt-get update
RUN apt-get install -y git make autoconf automake libtool gcc iptables
RUN git clone https://github.com/cloudflare/mmproxy.git
WORKDIR mmproxy 
RUN git submodule update --init
RUN make
CMD ["/mmproxy/mmproxy"]
