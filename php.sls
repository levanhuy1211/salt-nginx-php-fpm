php.packages:
  pkg.latest:
    - pkgs:
      - nginx
      - php7.3-fpm
      - php7.3-cli
      - php7.3-curl
copy lftp config file:
  file.managed:
    - name: /etc/nginx/conf.d/test.conf
    - source: salt://nginx/test.conf
create forder web:
  file.directory:
    - user:  root
    - name:  /var/www/test.vn
    - group:  root
    - mode:  755
create forder log:
  file.directory:
    - user: root
    - name: /var/log/nginx/test.vn
    - group: root
    - mode:  755
