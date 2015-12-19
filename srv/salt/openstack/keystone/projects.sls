{% from 'openstack/keystone/map.jinja2' import keystone %}
---
include:
  - .site

{% for project in keystone.projects -%}
keystone project {{project.name}}:
  keystone.project_present:
    - name: {{project.name}}
    - description: {{project.description}}
    - connection_token: {{keystone.token}}
    - connection_endpoint: http://localhost:35357/v3
{% endfor -%}
