---
{% set repo_pkg = pillar.openstack.repository.package %}
{% if grains.os_family == 'RedHat' %}
openstack repository package:
  pkg.latest:
    - name: {{repo_pkg}}

yum makecache:
  cmd.wait:
    - user: root
    - env:
        - PATH: /usr/bin
    - watch:
        - pkg: openstack repository package
{% endif %}
