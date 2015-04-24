mkdirQAdir:
    file.directory:
        - name: /opt/salt/QA
        - mkdirs: True
 
QAsyndicfiles:
  file.recurse:
    - name: /opt/salt/QA
    - saltenv: QA
    - source:  salt://sls
    - user: root
    - dir_mode: 0755
    - file_mode: 0644
    - include_empty: False
