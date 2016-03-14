{% if post.tags.length > 0 %}
  tags: 
  {% for tag in post.tags.toArray() %}
    <a href="/{{ tag.current_url }}">{{ tag.name }}</a>
    {% if not loop.last %}，{% endif %}
  {% endfor %}
{% endif %}
