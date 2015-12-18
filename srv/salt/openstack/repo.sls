---
{% from 'openstack/map.jinja2' import repo_pkg  %}

{% if grains.os_family == 'RedHat' %}
include:
  - epel

openstack repository package:
  pkg.installed:
    - name: {{repo_pkg}}
    - require:
      - sls: epel

yum makecache:
  cmd.wait:
    - user: root
    - env:
        - PATH: /usr/bin
    - watch:
        - pkg: openstack repository package
{% endif %}
