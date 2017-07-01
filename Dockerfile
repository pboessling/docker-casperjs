FROM node:6.11.0

RUN set -xe \
  && apt-get update \
  && apt-get install -y sudo fontconfig \
  && sudo npm install -g phantomjs-prebuilt casperjs phantomcss \
  && rm -rf ~/.npm \
  && npm cache clear --force \
  && rm -rf /var/lib/apt/lists/*

VOLUME /app

WORKDIR /app