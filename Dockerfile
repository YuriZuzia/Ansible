FROM alpine:3.16.2
RUN apk update && apk add \
    python3\
    py3-flask\
    py3-psycopg2\
    py3-cparser
COPY srv /srv
CMD ["python3", "/srv/app/web.py"]

