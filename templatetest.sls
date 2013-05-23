test:
  file.managed:
    - name: /root/test.txt
    - source: salt://files/test.txt
    - template: jinja
    - user: root  # file ownership
    - group: root
    - mode: 644
    - context:
        user: 'cbu'   # for content of file
