# syntax=docker/dockerfile:1

FROM golang:1.16-alpine
WORKDIR /app
COPY . /app/
RUN go build -o /usr/bin/gokart

ENTRYPOINT [ "gokart" ]
