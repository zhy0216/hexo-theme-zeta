<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>{% block title %}{{config.title}}{% endblock %}</title>

    <link rel="stylesheet" href="{{config.url}}/css/main.css">
    <link rel="stylesheet" href="{{config.url}}/css/entry.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="icon" 
      type="image/png" 
      href="{{config.url}}/image/logo.png">
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="wrapper">
      <header>
      <div><img src="{{config.url}}/image/logo.png" class="grv-img" 
                  style=" width: 150px;margin-left: -35px;"/></div>
        <div class="title"><a href="{{config.url}}">{{ config.title }} </a></div>
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
    {%if theme.forkme%}
    <a href="https://github.com/zhy0216/hexo-theme-zeta"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/38ef81f8aca64bb9a64448d0d70f1308ef5341ab/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f6461726b626c75655f3132313632312e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png"></a>
    {%endif%}

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
