FROM alpine

RUN apk --update --no-cache add apache2 && \
mkdir -p /run/apache2 && mkdir -p /web && chown -R apache:apache /web && \
sed -i 's#^DocumentRoot ".*#DocumentRoot "/web"#g' /etc/apache2/httpd.conf && \
sed -i 's/AllowOverride none/AllowOverride All/' /etc/apache2/httpd.conf && \
sed -i 's/Require all denied/Require all granted/' /etc/apache2/httpd.conf && \
sed -i 's#logs/.*\.log#/dev/stdout#g' /etc/apache2/httpd.conf && \
echo "Success."

EXPOSE 80
WORKDIR /code
CMD ["httpd", "-D", "FOREGROUND"]
