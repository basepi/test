/root/test/sshd_config:
  file.sed:
    - before: '^(port 22)$'
    - after: '\122'
    - flags: 'i'
