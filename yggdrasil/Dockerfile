ARG BUILD_FROM
ENV LANG C.UTF-8

FROM golang:alpine as builder

ENV YGGDRASIL_VERSION=0.3.14

RUN set -ex \
 && apk --no-cache add \
      build-base \
      git \
 && git clone "https://github.com/yggdrasil-network/yggdrasil-go.git" /src \
 && cd /src \
 && git reset --hard v${YGGDRASIL_VERSION} \
 && ./build

FROM FROM $BUILD_FROM

LABEL maintainer "Knut Ahlers <knut@ahlers.me>"

RUN set -ex \
 && apk --no-cache add bash

COPY --from=builder /src/yggdrasil    /usr/bin/
COPY --from=builder /src/yggdrasilctl /usr/bin/
COPY                start.sh          /usr/bin/
RUN chmod a+x /start.sh

CMD [ "/start.sh" ]
