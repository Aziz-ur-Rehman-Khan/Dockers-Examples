FROM python:3.10.5-alpine3.16

# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.11/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.11/community" >> /etc/apk/repositories

# install chromedriver
RUN apk --no-cache add chromium chromium-chromedriver

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install --upgrade cffi

# install selenium
RUN pip install selenium pytest
