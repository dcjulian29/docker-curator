FROM alpine:latest

ENV ES_HOST localhost
ENV ES_PORT 9200

RUN apk --no-cache add python3 libffi py-cffi py-openssl py-pip gcc libffi-dev python3-dev \
    && pip install elasticsearch-curator==5.8.3 \
    && pip install urllib3 \
    && pip install cryptography \
    && sed -i '/import sys/a urllib3.contrib.pyopenssl.inject_into_urllib3()' /usr/bin/curator \
    && sed -i '/import sys/a import urllib3.contrib.pyopenssl' /usr/bin/curator \
    && sed -i '/import sys/a import urllib3' /usr/bin/curator

COPY config.yml /etc/curator/

USER nobody:nobody

CMD [ "--config", "/etc/curator/config.yml", "/etc/curator/actions.yml" ]

ENTRYPOINT [ "/usr/bin/curator"]
