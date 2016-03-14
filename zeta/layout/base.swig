<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>{% block title %}{{config.title}}{% endblock %}</title>

    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/entry.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="icon" 
      type="image/png" 
      href="/theme/images/mylogo.png">
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="wrapper">
      <header>
        <div class="title"><a href="{{ SITEURL }}/">{{ config.title }} </a></div>
        <!-- 
        <div class="sub-title">subtitle</div>
         -->

        {% include 'sidebar.swig' %}

      </header>
      <section class="entry">
      {% block content %}

      {% endblock %}
      </section>
      <footer>
        <p><small>Power by <a href="https://github.com/hexojs/hexo">Hexo</a> & Theme by <a href="https://github.com/zhy0216/hexo-theme-zeta">Yang</a></small></p>
      </footer> 
    </div>
    <!-- Scale fix -->
  </body>
  <script>
      var metas = document.getElementsByTagName('meta');
      var i;
      
      if (navigator.userAgent.match(/iPhone/i)) {
        for (i=0; i<metas.length; i++) {
          if (metas[i].name == "viewport") {
            metas[i].content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
          }
        }
      
        document.addEventListener("gesturestart", gestureStart, false);
      }

      function gestureStart() {
        for (i=0; i<metas.length; i++) {
          if (metas[i].name == "viewport") {
            metas[i].content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";
          }
        }
      }

  {% if theme.duoshuo %}
    <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
    var duoshuoQuery = {short_name:'{{ theme.duoshuo }}'};
      (function() {
        var ds = document.createElement('script');
        ds.type = 'text/javascript';ds.async = true;
        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
        ds.charset = 'UTF-8';
        (document.getElementsByTagName('head')[0] 
         || document.getElementsByTagName('body')[0]).appendChild(ds);
      })();
    <!-- 多说公共JS代码 end -->
  {%endif%}
    </script>
</html>
