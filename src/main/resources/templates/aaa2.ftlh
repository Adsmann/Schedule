<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<#import "spring.ftl" as spring />
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-1.css'/>"/>
  </head>
  <body>
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
          <div class="desktop-1-child6"></div>  <!-- Войти -->
          <b class="b8">Войти</b>
          <div class="div103">
            Зарегистрироваться
          </div>
          <img class="desktop-1-child7" alt="" src="./public/ellipse-3@2x.png" />

          <img class="desktop-1-child8" alt="" src="./public/ellipse-4@2x.png" />

        <div class="text_4">Войти с помощью</div>
      </div>
    </div>  
  </body>
</html>
