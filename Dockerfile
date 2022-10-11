FROM nextcloud:apache
RUN apt-get update && apt-get install -y libsmbclient-dev smbclient && pecl install smbclient && docker-php-ext-enable smbclient
RUN apt-get install -y libmagickcore-6.q16-6-extra
