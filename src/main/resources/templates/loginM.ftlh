<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<#import "spring.ftl" as spring />
  <head>
    <meta charset="utf-8" />
    <title>Расписание</title>
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-1.css'/>"/>
  </head>
  <body>
  <form action="/login" method="post">
    <div class="container">
      <div class="desktop-1">
        <div class="desktop-1-child"></div>
        <div class="desktop-1-item"></div> <!-- Общая панель -->
          <div class="desktop-1-inner"></div>
          <div class="desktop-2-inner"></div>
          <div class="text">Расписание</div>
          <div class="text_2">Вход</div>
          <b class="b6"><input type="email" id="email" name="username" placeholder="Введите адрес электронной почты"></b>
          <b class="b7"><input type="password" id="password" name="password" placeholder="Введите пароль"></b>
        <button type="submit">
          <div class="desktop-1-child6" style="left: 791px;"><b class="b8">Войти</b></div>  <!-- Войти -->

        </button>


          <div class="div103">
            <a href="/registration">Зарегистрироваться</a>
          </div>
      </div>
    </div>
    </form>
  </body>
</html>
