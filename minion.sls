/etc/salt/minion:
  file.managed:
    - source: salt://minion/files/minion.template
    - user: root
    - group: wheel
    - mode: 640

salt-minion:
  service.running:
    - enable: True
    - watch:
      - file.managed: /etc/salt/minion
