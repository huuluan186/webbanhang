# Sử dụng image Python chính thức làm base image
FROM python:3.11
# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép requirements.txt vào thư mục làm việc
COPY requirements.txt .

# Cài đặt các dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ dự án vào thư mục làm việc
COPY . .

# Expose cổng 8000 để ứng dụng Django có thể chạy
EXPOSE 8000

# Chạy lệnh để khởi động server Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]