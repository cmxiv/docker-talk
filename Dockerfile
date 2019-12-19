FROM node:8.17

LABEL maintainer="cmxiv914@gmail.com"

RUN mkdir -p /app/src
WORKDIR /app/src
COPY src/* ./
RUN ls && npm install
CMD ["node", "app.js"]

EXPOSE 9140