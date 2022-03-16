FROM node:16.14-alpine3.15 as builder

WORKDIR /app
COPY package.json .
RUN npm install

COPY . .

RUN npm run build

# Runner
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
