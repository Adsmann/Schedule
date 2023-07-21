<!doctype html>
<html>
<#import "spring.ftl" as spring />

<head>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Расписание</title>
  <script src="<@spring.url '/public/main.js'/>" defer></script>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/index.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-head.css'/>"/>
</head>
<body style="background: #466969;">
<div class="des-1">
    <div class="tb_1">
        <a class="a_1" href="/calendar">Календарь</a>
        <a class="a_2" href="/notification">Уведомления</a>
        <a class="a_3" href="/create/subject">Добавить предмет</a>
        <a class="a_4" href="/office">Личный кабинет</a>
        <b class="ras2p"><a style="color: white" href="/">Расписание на каждый день</a></b>

    </div>
</div>
    <div class="calendar-wrap">
    </div>
</body>
</html>