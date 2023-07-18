<!doctype html>
<html>
<#import "spring.ftl" as spring />

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Расписание</title>
  <script src="<@spring.url '/public/main.js'/>" defer></script>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/index.css'/>"/>
</head>
<body style="background: #466969;">
    <div class="calendar-wrap">
    </div>
</body>
</html>