# Sử dụng hình ảnh Node.js làm cơ sở để xây dựng ứng dụng
FROM node:16 AS build

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép package.json và package-lock.json
COPY package*.json ./

# Cài đặt các phụ thuộc của dự án
RUN npm install

# Sao chép mã nguồn của dự án vào container
COPY . .

# Xây dựng ứng dụng Vue
RUN npm run build

# Sử dụng hình ảnh Nginx để phục vụ các tệp tĩnh của ứng dụng
FROM nginx:alpine

# Sao chép các tệp xây dựng từ giai đoạn trước vào thư mục phục vụ của Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Mở cổng 80
EXPOSE 80

# Chạy Nginx
CMD ["nginx", "-g", "daemon off;"]
