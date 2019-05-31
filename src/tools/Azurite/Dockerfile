FROM node:latest

RUN mkdir /src
WORKDIR /src
RUN git clone -q https://github.com/Azure/Azurite.git
WORKDIR  /src/Azurite
RUN npm install > /dev/null
RUN npm run build > /dev/null
RUN npm install -g > /dev/null

CMD [ "azurite", "--blobHost", "0.0.0.0" ]