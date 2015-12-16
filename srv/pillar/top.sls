---
base:
  '*':
    - common
    - 'os/{{grains["os_family"]}}'
    - 'os/{{grains["os"]}}'
    - database
