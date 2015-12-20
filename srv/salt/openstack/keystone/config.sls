{% from 'utils/ini.jinja2' import ini_options %}
{% from 'openstack/keystone/map.jinja2' import keystone %}
---
{{ini_options(keystone.lookup.config, keystone.options)}}