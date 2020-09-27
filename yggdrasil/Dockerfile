ARG BUILD_FROM

# compile yggdrasil
FROM golang:alpine as builder
ENV LANG C.UTF-8
ENV YGGDRASIL_VERSION=0.3.14

RUN set -ex \
 && apk --no-cache add \
      build-base \
      git \
 && git clone "https://github.com/yggdrasil-network/yggdrasil-go.git" /src \
 && cd /src \
 && git reset --hard v${YGGDRASIL_VERSION} \
 && ./build

#build container
FROM $BUILD_FROM

ENV LANG C.UTF-8

LABEL maintainer "Knut Ahlers <knut@ahlers.me>"


COPY --from=builder /src/yggdrasil    /usr/bin/
COPY --from=builder /src/yggdrasilctl /usr/bin/
COPY                start.sh          /
RUN chmod a+x /start.sh
RUN set -ex

CMD [ "/start.sh" ]
