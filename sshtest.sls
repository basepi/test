{% for user,data in pillar['blah'].items() %}
{{ user }}-public-ssh-keys:
  ssh_auth:
    - present
    - user: {{ user }}
    - names:
    {% for pub_ssh_key in data['pub_ssh_keys'] %}
      - {{ pub_ssh_key }}
    {% endfor %}
{% endfor %}
