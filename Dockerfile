#使用ubuntu 22.04基础镜像
FROM ubuntu:22.04

RUN apt -get update && \
    apt -get install -y shellinabox && \
    apt -get clean && \ 
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'root:Ithelpu@2023' | chpasswd 

EXPOSE 22

CMD P ["/usr/bin/shellinabox", "-t", "-s", "/:LOGIN"]
