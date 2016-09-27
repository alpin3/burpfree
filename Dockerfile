MAINTAINER kost - https://github.com/kost
FROM openjdk:8-jre-alpine

RUN apk --update add openssl ca-certificates && rm -f /var/cache/apk/*

RUN mkdir -p /opt/burp /work
WORKDIR /work
RUN wget -q -O /opt/burp/burpsuite.jar https://portswigger.net/DownloadUpdate.ashx?Product=Free

ENTRYPOINT ["java", "-jar", "/opt/burp/burpsuite.jar"]
