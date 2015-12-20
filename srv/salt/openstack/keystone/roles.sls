{% from 'openstack/keystone/map.jinja2' import keystone %}
---
include:
  - .site

{% for role in keystone.roles -%}
keystone role {{role}}:
  keystone.role_present:
    - name: {{role}}
    - connection_token: {{keystone.token}}
    - connection_endpoint: http://localhost:35357/v3
{% endfor -%}