FROM node:alpine
LABLE "author"="GK"

WORKDIR /app
COPY package*.json .
RUN npm install 
# RUN npm install --no-fund
# RUN npm fund

EXPOSE 3000
COPY . .

CMD ["node", "main.js"]
