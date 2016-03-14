{% extends "base.swig" %}
{% block content %}
<section id="content" class="body">
<h1>Archives for {{ config.title }}</h1>

<dl>


{% for post in page.posts %}
{# Show year #}
      {% set year %}
      {% set post.year = date(post.date, 'YYYY') %}

      {% if post.year !== year %}
        {% set year = post.year %}
    <dt>{{ year }}</dt>
      {% endif %}
      {# endshow #}
    <dd><a href="{{ post.permalink }}">{{ post.title }}</a></dd>
{% endfor %}
</dl>
</section>
{% endblock %}