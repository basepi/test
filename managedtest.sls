/root/test/myfile.txt:
  file.managed:
    - source: salt://test/myfile.txt
    - user: root

/root/test2/master.py:
  file.managed:
    - source: salt://salt/master.py
    - user: root

{{ grains['thatfile'] }}:
  file.managed:
    - user: root
    - contents: {{ pillar['foo'] }}
