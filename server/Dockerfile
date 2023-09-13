FROM golang:1.20.1 as builder

WORKDIR /go/src
ADD . .

RUN go env -w GO111MODULE=on \
    && go env -w GOPROXY=https://goproxy.cn,direct \
    && go env -w CGO_ENABLED=0 \
    && go env \
    && go mod tidy \
    && GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-s -w" -o ba-server


FROM alpine:latest

WORKDIR /app/

COPY --from=0 /go/src/ba-server ./
COPY --from=0 /go/src/config.yaml ./

EXPOSE 8600
ENTRYPOINT ./ba-server -c config.yaml
