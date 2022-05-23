FROM alpine:latest AS builder
ARG version=v3.2.3
RUN apk add cargo git
RUN git clone -b ${version} https://github.com/mbrubeck/agate.git
RUN cd agate && cargo build --release

FROM alpine:latest
RUN apk add libgcc
COPY --from=builder /agate/target/release/agate /usr/sbin
COPY init.sh /init.sh
CMD ["/init.sh"]
