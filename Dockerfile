FROM node:8.17

LABEL maintainer="siddhant.tandon@thoughtworks.com"

RUN mkdir -p /app/src
WORKDIR /app/src
COPY src/* ./
RUN ls && npm install
CMD ["node", "app.js"]

EXPOSE 9140