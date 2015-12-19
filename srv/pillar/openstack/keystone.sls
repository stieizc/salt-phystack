{% import_yaml 'openstack/keystone/accounts.yml' as accounts %}
{% import_yaml 'openstack/keystone/options.yml' as options %}
---
openstack:
  keystone:
    options: {{options}}
    accounts: {{accounts}}