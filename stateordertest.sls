git:
  pkg.installed:
    - refresh: True

github.com:
  ssh_known_hosts:
    - present
    - user: root
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48

/root/.ssh/id_rsa:
  file.managed:
    - source: salt://git/files/id_rsa-githubsalt
    - makedirs: True
    - mode: 600
    - user: root
    - group: root

/root/.ssh/id_rsa.pub:
  file.managed:
    - source: salt://git/files/id_rsa-githubsalt.pub
    - makedirs: True
    - mode: 600
    - user: root
    - group: root

git_solr:
  git.latest:
    - name: git@github.com:basepi-test/test
    - rev: master
    - target: /root/test
    - identity: /root/.ssh/id_rsa
    - require:
      - pkg: git
      - file: /root/.ssh/id_rsa
      - file: /root/.ssh/id_rsa.pub
      - ssh_known_hosts: github.com
