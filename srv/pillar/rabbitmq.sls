{% import_yaml 'mq.yml' as mq %}
---
rabbitmq:
  user: {{mq.user}}
  vhost: {{mq.vhost}}