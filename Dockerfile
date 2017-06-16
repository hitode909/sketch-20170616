FROM yukinying/chrome-headless-browser

RUN apt-get update -qqy \
 && apt-get -qqy install nodejs npm curl \
 && rm -rf /var/lib/apt/lists/* /var/cache/apt/* \
 && npm cache clean \
 && npm install n -g \
 && n stable \
 && curl -L https://www.npmjs.com/install.sh | /bin/sh \
 && hash -r \
 && npm install -g yarn

WORKDIR /app/
COPY package.json /app/
RUN yarn

ENTRYPOINT ["./a.sh"]
