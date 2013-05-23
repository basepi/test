a_shared_groop:
  group.present:
    - gid: 2000

a_user:
  user.present:
    - uid: 1003
    - groups:
      - a_shared_groop
    - require: 
      - group.present: a_shared_groop

/tmp/shared:
  file.directory:
    - user: root
    - group: a_shared_groop
    - mode: 775
    - require: 
      - group.present: a_shared_groop

https://github.com/saltstack/salt.git:
  git.latest:
    - rev: develop
    - target: /tmp/shared/salt
    - runas: a_user
    - require: 
      - user.present: a_user
      - file.directory: /tmp/shared
