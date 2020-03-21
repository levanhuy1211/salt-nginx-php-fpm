web:
  pkg.latest:
    - pkgs:
      - nginx
      - php7.3-fpm
      - php7.3-cli
      - php7.3-gd
      - php7.3-mysql

install-php-mcrypt-fpm:
  file.symlink:
    - name: /etc/php73/fpm/conf.d/20-mcrypt.ini
    - target: /etc/php73/mods-available/mcrypt.ini
    - require:
      - pkg: web

install-php-mcrypt-cli:
  file.symlink:
    - name: /etc/php73/cli/conf.d/20-mcrypt.ini
    - target: /etc/php73/mods-available/mcrypt.ini
    - require:
      - pkg: web
