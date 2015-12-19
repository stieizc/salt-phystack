---
include:
  - mysql.database
  - openstack.keystone

keystone sync database:
  cmd.watch:
    - name: keystone-manage db_sync
    - user: keystone
    - group: keystone
    - watch:
      - mysql_database: keystone
      - pkg: keystone packages
      #- sls: mysql.database
      #- sls: openstack.keystone
