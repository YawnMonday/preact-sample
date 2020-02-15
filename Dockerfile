FROM node:alpine
EXPOSE 8080

RUN \
  apk add --no-cache python make g++ && \
  apk add vips-dev fftw-dev --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --repository http://dl-3.alpinelinux.org/alpine/edge/main && \
  rm -fR /var/cache/apk/*

RUN apk add git

RUN git config --global user.email "yawnmonday@yahoo.co.jp"

WORKDIR /usr/src
COPY ./package.json .
RUN npm install && npm cache clean --force
COPY . .
CMD ["/bin/sh"]
# CMD ["npm", "run", "start" ]