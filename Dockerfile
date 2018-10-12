#FROM alpine:3.8
FROM centos:7.5.1804
MAINTAINER qijunbo <junboqi@foxmail.com> 
LABEL name="mm_wiki" 
#RUN  wget https://github.com/phachon/mm-wiki/releases/download/v0.1.1/mm-wiki-linux-amd64.tar.gz -o  mm-wiki-linux-amd64.tar.gz 
COPY  mm-wiki-linux-amd64.tar.gz /
COPY  docker-entrypoint.sh /bin/
VOLUME /md  /mm_wiki
EXPOSE 8080 8090
WORKDIR /mm_wiki
ENTRYPOINT docker-entrypoint.sh
#CMD  ping 127.0.0.1
