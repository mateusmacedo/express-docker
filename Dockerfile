FROM node:current
RUN useradd --user-group --create-home --shell /bin/bash app
ENV HOME=/home/app
WORKDIR $HOME
COPY package.json .
RUN chown -R app:app $HOME/*
USER app
WORKDIR $HOME
RUN npm install --silent --progress=false
COPY . .
EXPOSE 8080
#CMD [ "node", "app.js" ]