FROM alpine:latest

LABEL maintainer="leibinfeng <290887098@qq.com>"

#VOLUME /data

EXPOSE 7079
# Set default work directory
WORKDIR /var/www/cronsun
#./cronnode -conf conf/base.json
#start cronweb: ./cronweb -conf conf/base.json
CMD ["./cronnode", "-conf","conf/base.json"]
CMD ["./cronweb", "-conf","conf/base.json"]
#CMD ["ls"]

