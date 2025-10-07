FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production && npm cache clean --force
COPY . .
EXPOSE 3000
CMD ["npx", "next", "dev", "-H", "0.0.0.0"]