FROM golang:1.14.0-alpine3.11

LABEL maintainer="Amir Ghaffari Heravi<contact@amirghaffari.com>"

RUN apk --no-cache --virtual add git

RUN go get -u golang.org/x/tools/...

RUN mkdir -p /go/src/github.com/ /go/pkg/linux_amd64/github.com/ \
    && chmod -R 777 /go/src/github.com \
    && chmod -R 777 /go/pkg/linux_amd64/github.com

EXPOSE 8000 8001

