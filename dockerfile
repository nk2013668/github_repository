FROM prestashop/base:5.6-apache
LABEL maintainer="PrestaShop Core Team <coreteam@prestashop.com>"
ENV PS_VERSION 1.7.6.9
# Get PrestaShop
ADD https://www.prestashop.com/download/old/prestashop_1.7.6.9.zip /tmp/prestashop.zip
# Extract
RUN mkdir -p /tmp/data-ps \
&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \
&& bash /tmp/ps-extractor.sh /tmp/data-ps \
&& rm /tmp/prestashop.zip