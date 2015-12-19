---
base:
  '*':
    - common
    - 'os/{{grains.os_family}}'
    - 'os/{{grains.os}}'
    - mysql
    - rabbitmq
    - openstack.keystone
