mysql-example.com-user:
  mysql_user.present:
    - name: test_vn_db
    - password: 123456aA@
    - host: localhost
    - connection_user: root
    - connection_charset: utf8
    - require:
      - pkg: mysqld
      - pkg: mysql_python
      - service: mysqld

mysql-example.com-database:
  mysql_database.present:
    - name: test_vn_db
    - connection_user: root
    - connection_charset: utf8
    - require:
      - pkg: mysqld
      - pkg: mysql_python
      - service: mysqld

mysql-example.com-grant:
  mysql_grants.present:
    - grant: all privileges
    - database: test_vn_db
    - user: root
    - host: localhost
    - connection_user: root
    - connection_charset: utf8
    - require:
      - mysql_database: test_vn_db
      - mysql_user: root
      - pkg: mysqld
