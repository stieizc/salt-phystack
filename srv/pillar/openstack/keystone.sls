{% import_yaml 'openstack/keystone/accounts.yml' as accounts %}
{% import_yaml 'openstack/keystone/options.yml' as options %}
{% import_yaml 'openstack/keystone/credentials.yml' as credentials %}
---
openstack:
  keystone:
    options: {{options}}
    accounts: {{accounts}}
    credentials: {{credentials}}