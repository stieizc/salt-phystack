{% from 'openstack/keystone/map.jinja2' import keystone %}
{% set token = keystone.options.present.DEFAULT.admin_token %}
---
include:
  - .site

{% for service in keystone.credentials.services -%}
keystone service {{service.name}}:
  keystone.service_present:
    - name: {{service.name}}
    - service_type: {{service.service_type}}
    - description: {{service.description}}
    - connection_token: {{token}}
    - connection_endpoint: http://localhost:35357/v3
{% endfor -%}

{% for endpoint in keystone.credentials.endpoints -%}
keystone endpoint {{endpoint.name}}:
  keystone.endpoint_present:
    - name: {{endpoint.name}}
    - publicurl: {{endpoint.publicurl}}
    - internalurl: {{endpoint.internalurl}}
    - adminurl: {{endpoint.adminurl}}
    - connection_token: {{token}}
    - connection_endpoint: http://localhost:35357/v3
{% endfor -%}
