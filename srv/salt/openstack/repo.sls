---
{% from 'openstack/map.jinja2' import repo_pkg  %}

{% if grains.os_family == 'RedHat' %}
openstack repository package:
  pkg.installed:
    - name: {{repo_pkg}}

yum makecache:
  cmd.wait:
    - user: root
    - env:
        - PATH: /usr/bin
    - watch:
        - pkg: openstack repository package
{% endif %}
