# Pull the image
FROM stilliard/pure-ftpd:hardened

ENV FTP_USER_NAME=bob
ENV FTP_USER_PASS=12345
ENV FTP_USER_HOME=/home/bob

