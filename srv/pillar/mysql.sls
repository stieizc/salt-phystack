{% import_yaml 'database.yml' as database %}
---
mysql:
  global:
    client-server:
      default_character_set: utf8

  clients:
    mysql:
      default_character_set: utf8
    mysqldump:
      default_character_set: utf8

  library:
    client:
      default_character_set: utf8

  server:
    root_user: 'root'
    root_password: {{database.accounts.root.password}}
    mysqld:
      default-storage-engine: innodb
      innodb_file_per_table: true
      character-set-server: utf8
      collation-server: utf8_general_ci
      init-connect: "'SET NAMES utf8'"
    mysqld_safe:
      log-error: /var/log/mariadb/mariadb.log
      pid-file: /var/run/mariadb/mariadb.pid
    lookup:
      python: python2-PyMySQL

{%- if grains.os_family == 'RedHat' and grains.osmajorrelease == '7' %}
  lookup:
    server: mariadb-server
    client: mariadb
    service: mariadb
{% endif -%}
