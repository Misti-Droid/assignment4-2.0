FROM fedora:latest
RUN dnf upgrade -y && \
    dnf install -y tuxpaint vim httpd && \
    dnf clean all

COPY myinfo.html /var/www/html/

EXPOSE 80

ENTRYPOINT /usr/sbin/httpd -DFOREGROUND