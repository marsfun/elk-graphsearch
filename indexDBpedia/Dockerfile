FROM ubuntu:16.04

RUN apt-get update && apt-get install -yq --no-install-recommends \
    python-pip bzip2 \
    iputils-ping vim telnet \
    && pip install --no-cache-dir\
    elasticsearch

ADD ./page_links_en.ttl.bz2 /tmp/client/
ADD indexDBpedia.py /tmp/client/

