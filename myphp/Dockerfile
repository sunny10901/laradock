FROM alpine:latest

LABEL maintainer="lbinf  <290887098@qq.com>"


ARG CHANGE_SOURCE=false
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    # Change application source from dl-cdn.alpinelinux.org to aliyun source
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
;fi

RUN apk update \
    && apk upgrade \
    && apk add php

# php-fpm使用以下配置
EXPOSE 80

CMD ["php","-v"]
#CMD ["php","-S","0.0.0.0:80"]