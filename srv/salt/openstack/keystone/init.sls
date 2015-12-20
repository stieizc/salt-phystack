---
include:
  - profile.memcache
  - .package
  - .config
  - .db
  - .site
  - .credentials
  - .roles
  - .projects
  - .users

keystone state holder:
  test.succeed_without_changes: []
