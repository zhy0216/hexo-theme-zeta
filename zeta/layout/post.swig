{% extends "base.swig" %}
{% block title %}{{ page.title }}{% endblock %}
{% block content %}
<section id="content" class="body entry">    
    <h1 class="entry-title">{{ page.title }}</h1>
    {{ page.content }}
</section>
    {%include "comment.swig"%}
{% endblock %}
