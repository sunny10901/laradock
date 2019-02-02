#FROM codeclimate/codeclimate

# Set default work directory
#WORKDIR /var/www

#FROM alpine:latest
#
#LABEL maintainer="lbinf  <290887098@qq.com>"
#
#
#ARG CHANGE_SOURCE=false
#RUN if [ ${CHANGE_SOURCE} = true ]; then \
#    # Change application source from dl-cdn.alpinelinux.org to aliyun source
#    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
#;fi
#
#RUN apk update \
#    && apk upgrade \
#    && apk add --no-cache openssl \
#    && apk add --no-cache bash curl sudo openrc make \
#    && apk add --no-cache php

#RUN  sudo rc-update add docker boot

#RUN curl -L -O /tmp/docker.tgz \
#    https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz && \

#COPY docker-18.06.1-ce.tgz /tmp/docker.tgz
#
#RUN tar -C /tmp -xzvf /tmp/docker.tgz && \
#    mv /tmp/docker/docker /bin/docker && \
#    chmod 0755 /bin/docker && \
#    rm -rf /tmp/docker*

#RUN apk add sudo openrc && sudo apk add docker && sudo rc-update add docker boot

#RUN rc-service docker restart && docker run hello-world
#RUN docker && docker pull codeclimate/codeclimate:latest
#RUN docker run \
#    --env CODECLIMATE_CODE="$PWD" \
#    --volume "$PWD":/code \
#    --volume /var/run/docker.sock:/var/run/docker.sock \
#    --volume /tmp/cc:/tmp/cc \
#    codeclimate/codeclimate help
#COPY codeclimate-master.tar.gz /tmp/master.tar.gz
#RUN curl -L https://github.com/codeclimate/codeclimate/archive/master.tar.gz | tar xvz \
#    && cd codeclimate-* && make install
#RUN ls -la /tmp && tar -xzvf /tmp/master.tar.gz  && cd codeclimate-* && make install

#ENTRYPOINT ["/usr/src/app/bin/codeclimate"]

#RUN apk add brew \
#    && brew tap codeclimate/formulae\
#    && brew install codeclimate
## 安装
#brew tap codeclimate/formulae
#brew install codeclimate
## 更新升级
#brew update
#brew upgrade codeclimate

FROM lbinf/climate:climate-php
# php-fpm使用以下配置
EXPOSE 80
#CMD ["php","-v"]
CMD ["php","-S","0.0.0.0:80"]
#ENTRYPOINT ["codeclimate"]