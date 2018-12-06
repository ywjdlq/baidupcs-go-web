FROM alpine

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="ywjdlq"

ENV TZ=Asia/Shanghai PORT=9999 VER=3.5.9

RUN mkdir /files

ADD files/start.sh /files/start.sh
ADD files/BaiduPCS-Go /files/BaiduPCS-Go

RUN apk add --no-cache s6
RUN chmod +x /files/start.sh

# ports and volumes
EXPOSE 9999
VOLUME /root/Downloads

CMD [ "/files/start.sh" ]
