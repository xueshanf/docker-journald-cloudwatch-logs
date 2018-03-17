FROM golang:stretch AS builder

RUN apt-get update && apt-get install -y git gcc g++ libsystemd-dev
RUN go get -d github.com/saymedia/journald-cloudwatch-logs
RUN go build ./src/github.com/saymedia/journald-cloudwatch-logs

FROM debian:stretch-slim
LABEL Xueshan Feng <xueshan.feng@gmail.com>
COPY --from=builder /go/journald-cloudwatch-logs /usr/local/bin/journald-cloudwatch-logs
CMD ["/bin/bash" ]
