ARG NODE
ARG JAVA
FROM node:${NODE}-stretch

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
   && echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' \
   | tee /etc/apt/sources.list.d/google-chrome.list \
   && apt-get -q update && apt-get -y -q install \
      google-chrome-stable \
      openjdk-${JAVA}-jre-headless \
      # needed by webdriver!!
      libgconf-2-4 \
      xvfb \
      libgtk2.0-0 \
      libnotify-dev \
      libnss3 \
      libxss1 \
      libasound2 \
    && npm set -g progress=false

