FROM alpine:3 as build

LABEL description="Build container - libcoap"

RUN apk update && apk add --no-cache \
    autoconf automake build-base binutils gcc g++ git libtool make openssl-dev openssl

RUN cd /tmp \
    && git clone https://github.com/obgm/libcoap.git \
    && cd libcoap \
    && ./autogen.sh \
    && ./configure --with-openssl --disable-tests --enable-shared --disable-documentation \
    && make \
    && make install

EXPOSE 5683/udp

ENTRYPOINT [ "coap-server", "-d 9", "-v 9" ]