{% if post.tags.length > 0 %}
  tags: 
  {% for tag in post.tags.toArray() %}
    <a href="{{config.url}}{{ url_for(tag.path) }}">{{ tag.name }}</a>
    {% if not loop.last %}，{% endif %}
  {% endfor %}
{% endif %}
