FROM golang:1.10-alpine as builder

LABEL maintainer="leibinfeng <290887098@qq.com>"

#FROM ouqg/gocron
#
#LABEL maintainer="leibinfeng <290887098@qq.com>"

#USER root
##VOLUME /data
#ARG CHANGE_SOURCE=false
#RUN if [ ${CHANGE_SOURCE} = true ]; then \
#    # Change application source from dl-cdn.alpinelinux.org to aliyun source
#    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
#;fi
#
#COPY ./gocron-node /app
#
#RUN apk update \
#    && apk upgrade \
#    && apk add bash
#EXPOSE 5920 5921
#USER app
#CMD ["&&","/app/gocron-node","-allow-root"]
#ENTRYPOINT ["/app/gocron-node","-allow-root"]

ARG CHANGE_SOURCE=false
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    # Change application source from dl-cdn.alpinelinux.org to aliyun source
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
;fi

WORKDIR /var/www/gocron

#COPY . .

RUN apk update \
    && apk add --no-cache git ca-certificates make bash nodejs yarn

#WORKDIR /go/src/github.com/ouqiang/gocron
COPY ./gocron .

RUN go version && yarn --version&& node --version && pwd  && ls -la

RUN make install-vue \
    && make build-vue \
    && make statik \
    && CGO_ENABLED=0 make gocron

FROM alpine:3.7

RUN apk add --no-cache ca-certificates tzdata \
    && addgroup -S app \
    && adduser -S -g app app

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /app

COPY --from=builder /var/www/gocron/bin/gocron .

RUN chown -R app:app ./

EXPOSE 5920

USER app

ENTRYPOINT ["/app/gocron", "web"]

