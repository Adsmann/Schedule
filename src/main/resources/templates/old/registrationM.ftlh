<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <title>Расписание</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-2.css'/>"/>
  </head>
  <body>
  <form action="/registration" method="post">
    <div class="container">
      <div class="desktop-1">
        <div class="desktop-1-child"></div> 
        <div class="desktop-1-item"></div> <!-- Общая панель -->
          <div class="desktop-1-inner"></div>
          <div class="desktop-2-inner"></div>
          <div class="text">Расписание</div>
          <div class="text_2">Регистрация</div>
          <!-- <div class="desktop-1-child2"></div>
          <div class="desktop-1-child3"></div>
          <div class="desktop-1-child4"></div>
          <div class="desktop-1-child5"></div> -->
          <b class="b7"><input type="email" id="email" name="email" placeholder="Введите адрес электронной почты"></b>
          <b class="b6"><input type="text" id="username" name="username" placeholder="Введите имя пользователя"></b>
          <b class="b9"><input type="password" id="password" name="password" placeholder="Введите пароль"></b>
        <button type="submit">
          <div class="desktop-1-child6" style="left: 791px;"><b class="b8">Войти</b></div>  <!-- Войти -->

        </button>
      </div>
    </div>
  </form>
  </body>
</html>
