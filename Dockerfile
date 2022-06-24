# syntax=docker/dockerfile:1

FROM golang:1.17.3-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

RUN go build  -o /user-management

EXPOSE 8080

CMD [ "/user-management" ]