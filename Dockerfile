# Use Nginx as the base image
FROM nginx:latest

# Install PHP and required dependencies
RUN apt update && apt install -y php-fpm php-cli

# Copy application files to /app directory
COPY . /app

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Set working directory
WORKDIR /app

# Expose port 80
EXPOSE 81

# Start PHP and Nginx
CMD service php7.4-fpm start && nginx -g "daemon off;"
