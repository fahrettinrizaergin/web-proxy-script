# Use the official PHP image as the base image
FROM php:7.4-cli

# Copy the proxy.php file into the Docker image
COPY proxy.php /var/www/html/proxy.php

# Expose port 80 for the web server
EXPOSE 8083

# Use CMD to start the PHP built-in web server
CMD ["php", "-S", "proxy.fahrettinrizaergin.com:8083", "/var/www/html/proxy.php"]
