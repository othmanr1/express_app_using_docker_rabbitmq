
FROM node:latest


WORKDIR /app


COPY package*.json ./


RUN npm install


RUN npm install -g nodemon


COPY . .


EXPOSE 3080


CMD ["nodemon", "app.js"]