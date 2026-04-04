# for HTML using nginx
FROM nginx
COPY index.html /usr/share/nginx/html/index.html

# for Node App
FROM node:18
WORKDIR /app
COPY package.json .
COPY app.js .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
