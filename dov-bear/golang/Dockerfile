FROM golang:1.21-alphine3.18 AS builder

WORKDIR /app

COPY go.mod .
COPY go.sum .
COPY main.go .

RUN apk add build-base

RUN CGO_ENABLED=1 go build -o main ./...
RUN go build

FROM alpine:3.18

WORKDIR /app

COPY --from=builder /app/main .
COPY public public
COPY templates templates

ENV PORT=3000 INSTANCE_NAME="dov bear" INSTANCE_HASH="abc123"

EXPOSE ${PORT}

ENTRYPOINT /app/main