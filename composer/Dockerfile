FROM composer
LABEL maintainer="zhanglianxin <coolman@coolman.site>"

WORKDIR /var/www/html

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN set -eux \
    # && sed -i 's+dl-cdn.alpinelinux.org+mirrors.tencentyun.com+g' /etc/apk/repositories \
    # && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk add --no-cache su-exec \
    && su-exec www-data true \
    # && su-exec www-data composer config -g repo.packagist composer https://mirrors.cloud.tencent.com/composer/ \
    # && su-exec www-data composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/ \
    && su-exec www-data composer global require hirak/prestissimo \
    && chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["composer", "install"]
