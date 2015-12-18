---
include:
  - mysql
  - openstack.keystone

keystone sync database:
  cmd.watch:
    - name: keystone-manage db_sync
    - user: keystone
    - group: keystone
    - watch:
      - sls: mysql
      - sls: openstack.keystone