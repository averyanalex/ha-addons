ARG BUILD_FROM
ARG BUILD_ARCH

# compile yggdrasil
FROM golang:alpine as builder
ENV LANG C.UTF-8
ENV YGGDRASIL_VERSION=0.4.3

WORKDIR /build
RUN apk --no-cache add build-base git \
 && git clone "https://github.com/yggdrasil-network/yggdrasil-go.git" \
 && cd yggdrasil-go \
 && git reset --hard v${YGGDRASIL_VERSION} \
 && GOARCH=$BUILD_ARCH ./build

#build container
FROM $BUILD_FROM

ENV LANG C.UTF-8

LABEL maintainer "AveryanAlex <averyanalex@gmail.com>"


COPY --from=builder /build/yggdrasil-go/yggdrasil    /usr/local/bin/
COPY --from=builder /build/yggdrasil-go/yggdrasilctl /usr/local/bin/
COPY                run.sh          /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
