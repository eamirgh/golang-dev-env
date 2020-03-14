FROM golang:1.13.8-alpine3.10

LABEL maintainer="Amir Ghaffari Heravi<contact@amirghaffari.com>"

RUN apk --no-cache --virtual add git

RUN go get -u golang.org/x/tools/...

EXPOSE 8000 8001

