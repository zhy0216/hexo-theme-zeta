<p>
<small>
<abbr class="published" title="{{ post.date.format(config.date_format) }}">
  {{ post.date.format(config.date_format) }}
</abbr> | 
{% include 'taglist.swig' %} -- (<a href="{{ post.permalink
  }}" rel="bookmark">链接</a>)
</small>
</p>
