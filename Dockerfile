FROM python:3.11.0b3-alpine

LABEL "com.github.actions.name"="Sync S3"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.1.0"
LABEL repository="https://github.com/dmolik/sync-s3-action"
LABEL maintainer="Dan Molik <dan@danmolik.com>"

COPY requirements.txt /data/requirements.txt

RUN pip install --quiet --no-cache-dir -r /data/requirements.txt

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
