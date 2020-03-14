FROM golang:1.14.0-alpine3.11

LABEL maintainer="Amir Ghaffari Heravi<contact@amirghaffari.com>"

RUN apk --no-cache --virtual add git

RUN go get -u golang.org/x/tools/...

EXPOSE 8000 8001

