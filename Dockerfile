FROM node:lts-alpine3.18

LABEL maintainer "andrei.lapkin.aws@gmail.com"
RUN apk add --no-cache git

RUN npm install -g auto-changelog@2.4.0

ENV SRC_PATH /usr/local/src/app
RUN mkdir -p $SRC_PATH

VOLUME [ "$SRC_PATH" ]
WORKDIR $SRC_PATH

CMD ["--help"]
ENTRYPOINT ["auto-changelog"]