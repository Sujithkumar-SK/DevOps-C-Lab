FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY . .
EXPOSE 3000
ENV DB_HOST=127.0.0.1
ENV DB_PORT=3306
ENV DB_USER=myapp_user
ENV DB_PASSWORD=mypassword
ENV DB_NAME=myapp_db
CMD ["npm", "start"]
