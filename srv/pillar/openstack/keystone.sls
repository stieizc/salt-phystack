{% import_yaml 'openstack/keystone/accounts.yml' as accounts %}
{% import_yaml 'openstack/keystone/options.yml' as options %}
{% import_yaml 'openstack/keystone/credentials.yml' as credentials %}
---
openstack:
  keystone:
    options: {{options}}
    roles:
      - admin
      - user
    projects:
      - name: admin
        description: Admin Project
      - name: service
        description: Service Project
      - name: demo
        description: Demo Project
    accounts: {{accounts}}
    credentials: {{credentials}}
    token: {{options.present.DEFAULT.admin_token}}