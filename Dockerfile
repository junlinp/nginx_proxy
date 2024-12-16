FROM ubuntu:22.04
RUN apt update
RUN debian_frontend=noninteractive apt install -y \
        wget \
        git \
        gcc \
        g++ \
        libpcre3 \
        libpcre3-dev \
        zlib1g-dev \
        make

RUN wget https://nginx.org/download/nginx-1.26.2.tar.gz && tar -xvf nginx-1.26.2.tar.gz

RUN git clone https://github.com/junlinp/nginx_proxy.git

RUN cd nginx_proxy && bash build.sh

RUN ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx
CMD ["nginx", "-g", "daemon off;"]

