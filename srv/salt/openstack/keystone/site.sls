{% from 'openstack/keystone/map.jinja2' import keystone %}
---
include:
  - openstack.keystone.config
  - apache
  - apache.mod.wsgi
  - apache.service

extend:
  apache service:
    service:
      - watch:
        - sls: openstack.keystone.config

site config:
  file.managed:
    - name: /etc/httpd/conf.d/wsgi-keystone.conf
    - source: salt://openstack/keystone/wsgi-keystone.conf
    - watch_in:
      - service: apache service