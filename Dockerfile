FROM python:latest
ENV GIT_CRYPT_VERSION 0.6.0-1
RUN curl -L https://github.com/AGWA/git-crypt/archive/debian/$GIT_CRYPT_VERSION.tar.gz | tar zxv -C /var/tmp && \
    cd /var/tmp/git-crypt-debian-$GIT_CRYPT_VERSION && \
    make && make install PREFIX=/usr/local && \
    rm -rf /var/tmp/*
