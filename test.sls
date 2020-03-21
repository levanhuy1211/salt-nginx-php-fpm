copy nginx config file:
  file.managed:
    - name: /etc/nginx/conf.d/test.conf
    - source: salt://nginx/test.conf
