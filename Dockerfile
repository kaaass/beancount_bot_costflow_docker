FROM python:3.9-alpine

WORKDIR /app
ADD requirements.txt /app

RUN apk add --update --no-cache --virtual .build-deps gcc libc-dev libxml2-dev libxml2 libxslt-dev && \
    pip install --no-cache-dir -r requirements.txt && \
	apk del .build-deps && \
	apk add nodejs

VOLUME ["/config", "/bean"]

ENV BEANCOUNT_BOT_CONFIG /config/beancount_bot.yml
ENV PYTHONPATH /config

ADD docker-entrypoint.sh /app
CMD ["/app/docker-entrypoint.sh"]
