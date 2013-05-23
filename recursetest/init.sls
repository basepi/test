woot-dir:
  file.recurse:
    - clean: True
    - name: /root/.vc/kscfg
    - source: salt://kickstart/.vc/kscfg
    - file_mode: 644
    - dir_mode: 755
