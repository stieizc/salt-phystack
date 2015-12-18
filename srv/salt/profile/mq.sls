---
include:
  - rabbitmq
  - profile.ntp

# require include only sls will fail
#extend:
#  rabbitmq-server:
#    pkg:
#      - require:
#        - sls: profile.ntp

remove_rabbitmq_guest:
  rabbitmq_user.absent:
    - name: guest
#    - require:
#      - sls: rabbitmq
