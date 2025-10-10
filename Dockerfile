# Sử dụng image Node.js chính thức
FROM node:18-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

# Copy toàn bộ source code vào container
COPY . .

# Expose cổng (phải trùng với PORT trong code)
EXPOSE 3000

# Chạy server
CMD ["npm", "start"]
