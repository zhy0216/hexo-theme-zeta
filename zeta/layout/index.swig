{% extends "base.swig" %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}
  <div class="front-title">
    {% for post in page.posts %}
        <div class="front-title"><a href="{{post.permalink}}">{{ post.title }}</a></div>
        {% include 'article_infos.swig' %}
        {{ post.content}} 
        <div class="read-more"><a href="{{post.permalink}}">read more...</a></div>
        <hr />
    {% endfor %}
  </div>

  {% include 'pagination.swig' %}

{% endblock %}