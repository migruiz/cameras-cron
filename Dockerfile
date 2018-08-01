FROM node:8.11.3-slim

RUN apt-get update && apt-get install -yqq --no-install-recommends cron\
&& rm -rf /var/lib/apt/lists/* 


RUN mkdir /App/
COPY App/package.json  /App/package.json


RUN cd /App \
&& npm  install 


COPY App /App

#ENTRYPOINT ["node","/App/app.js"]



