{% if page.prev or page.next %}
  <span class="paginator">
    {{
      paginator({
        prev_text: '<i class="fa fa-angle-left"></i>',
        next_text: '<i class="fa fa-angle-right"></i>',
        mid_size: 1,
        base: config.url
      })
    }}
  </span>
{% endif %}

