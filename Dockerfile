FROM alpine:3.20

RUN apk --no-cache add sniproxy

WORKDIR /etc/sniproxy

EXPOSE 443

CMD ["/usr/sbin/sniproxy","-c","/etc/sniproxy/sniproxy.conf","-f"]
