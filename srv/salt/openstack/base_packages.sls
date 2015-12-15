{% from 'openstack/map.jinja2' import base_packages  %}
---
install openstack base packages:
  pkg.latest:
    - pkgs: {{base_packages}}