FROM golang:1.21.3-alpine

RUN apk add --no-cache git

WORKDIR /app

COPY go.mod go.sum ./
COPY vendor/ ./vendor/
COPY *.go ./

RUN go build -mod=vendor -o it-works

EXPOSE 8080

CMD ["./it-works"]
