{% import keystone from 'openstack/keystone/map.jinja2' %}
{% set pkg_func = 'latest' if keystone.package.ensure_latest else 'installed' %}
---
keystone packages:
  pkg.{{pkg_func}}:
    - pkgs: {{keystone.lookup.packages}}