# Development Dockerfile
FROM node:18
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . .
EXPOSE 1337
CMD ["npm", "run", "develop"]