{% from 'openstack/keystone/map.jinja2' import keystone, email %}
---
include:
  - .site
  - .roles
  - .projects

{% for uid, user in keystone.accounts.iteritems() -%}
keystone user {{uid}}:
  keystone.user_present:
    - name: {{user.name}}
    - password: {{user.password}}
    - project: {{user.project}}
    - email: {{email}}
{%- if 'roles' in user %}
    - roles: {{user.roles}}
{%- endif %}
    - connection_token: {{keystone.token}}
    - connection_endpoint: http://localhost:35357/v3
{% endfor -%}