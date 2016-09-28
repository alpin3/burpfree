FROM openjdk:8-jre-alpine
MAINTAINER kost - https://github.com/kost

RUN apk --update add openssl ca-certificates ttf-dejavu && rm -f /var/cache/apk/*
RUN mkdir -p /opt/burp /work && chown -R nobody /work && wget -q -O /opt/burp/burpsuite.jar https://portswigger.net/DownloadUpdate.ashx?Product=Free

WORKDIR /work
USER nobody

ENTRYPOINT ["java", "-jar", "/opt/burp/burpsuite.jar"]
