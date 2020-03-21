keystone_grants:
  mysql_grants.present:
    - host: localhost
    - database: test.*
    - grant: ALL PRIVILEGES
    - user: root
    - host: localhost
    - password: 123456aA@
