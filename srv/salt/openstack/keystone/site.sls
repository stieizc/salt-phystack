{% import keystone from 'openstack/keystone/map.jinja2' %}
---
include:
  - apache
  - apache.mod.wsgi
  - apache.service

site config:
  file.managed:
    - name: /etc/httpd/conf.d/wsgi-keystone.conf
    - source: salt://openstack/keystone/wsgi-keystone.conf
    - watch_in:
      - service: apache service