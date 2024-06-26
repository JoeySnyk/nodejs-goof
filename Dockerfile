# FROM node:6-stretch
FROM node:18.13.0

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update
RUN npm install
RUN apt-get -y update && apt-get -y install ca-certificates apt-transport-https
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
