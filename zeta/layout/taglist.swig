{% if post.tags %}
  tags: 
  {% for tag in post.tags.toArray() %}
    <a href="/{{ tag.url }}">{{ tag.name }}</a>, 
  {% endfor %}
{% endif %}
