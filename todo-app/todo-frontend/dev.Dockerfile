FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

ENV HOST=0.0.0.0
CMD ["npm", "run", "dev"]