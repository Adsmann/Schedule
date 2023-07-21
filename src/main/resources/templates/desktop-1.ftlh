<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <title>Расписание</title>
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-1.css'/>"/>
  </head>
  <body>

    <div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>



    <div class="container">
      <div class="desktop-1">
        <div class="tab_1">
          <div class="tab_2">
            <form action="/login" method="post">
            <div class="tab_pochta">

                <input class="input" type="email" id="email" name="username" placeholder="Адрес электронной почты">
                <input class="input_2" type="password" id="password" name="password" placeholder="Пароль">

    
            </div>
            
            <div class="zag" ><a href="/registration">Зарегистрироваться</a></div>
            <button class="vhod" type="submit" >Войти</button>
            </form>
          </div>
          <div class="tab_3">
            <b class="text">Регистрация</b>
            <b class="text_2">Вход</b>
          
          </div>
        </div> 
        
      </div>  

  
        
    </div>  
  </body>
</html>
