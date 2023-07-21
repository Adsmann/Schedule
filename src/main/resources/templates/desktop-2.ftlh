<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <title>Расписание</title>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-2.css'/>"/>
  </head>
  <body>

    <div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>



    <div class="container">
      <div class="desktop-1">
        <div class="tab_1">
          <div class="tab_2">
            <form action="/registration" method="post">
            <div class="tab_pochta">

                
                <input class="input" type="text" id="username" name="username" placeholder="Имя пользователя">
                <input class="input_2" type="email" id="email" name="email" placeholder="Адрес электронной почты">
                <input class="input_3" type="password" id="password" name="password" placeholder="Пароль">

    
            </div>
            
            <button type="submit" class="zag">Зарегестрироваться</button>
            </form>
          </div>
          <div class="tab_3">
            <b class="text">Регистрация</b>
          
          </div>
        </div> 
        
      </div>  

  
        
    </div>
  </body>
</html>
