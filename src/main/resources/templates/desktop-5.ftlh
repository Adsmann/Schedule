<#import "spring.ftl" as spring />
<#if ((mainSubject.id)??)! >
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8" />
    <title>Расписание</title>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-15.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/header.css'/>"/>
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

  
  
  
  <div class="desktop-5">
    <div class="tab_1">
      <div class="tab_2 ">
        <div class="tab_3">
          <div class="desktop-5-item_DATE">
            <input class="input-text_DATE" rows="4" cols="50" placeholder="${mainSubject.date}">
          </div>
          <div class="desktop-5-item_NACH">
            <input class="input-text_NACH" rows="4" cols="50" placeholder="${mainSubject.timeStart}">
          </div>
          <div class="desktop-5-item_KON">
            <input class="input-text_KON" rows="4" cols="50" placeholder="${mainSubject.timeEnd}">
          </div>
          <div class="desktop-5-item_AUD">
            <input class="input-text_AUD" rows="4" cols="50" placeholder="${mainSubject.auditorium}">
          </div>
          <div class="desktop-5-item_GPOUP">
            <input class="input-text_GPOUP" rows="4" cols="50" placeholder="${mainSubject.clas}">
          </div>


          <#if mainSubject.additional_subject == true >
            <div class="desktop-5-item_MER">
              <b class="b_m">Мероприятие</b>
            </div>
          <#else>

          </#if>
          </div>

        </div>

        <div class="tab_4">
          <div class="desktop-5-item_3_1">

            <form action="/subject/settings/new/${id}" method="post">
            <div class="desktop-5-item_DATE_1">
              <input class="input-text_DATE_1" type="date" name="data">
            </div>
            <div class="desktop-5-item_NACH_1">
              <input class="input-text_NACH_1" type="time" name="timeStart" >
            </div>
            <div class="desktop-5-item_KON_1">
              <input class="input-text_KON_1" type="time" name="timeEnd" >
            </div>
            <div class="desktop-5-item_AUD_1">
              <input class="input-text_AUD_1" type="number" name="auditorium" >
            </div>
              <div class="desktop-5-item_GPOUP_1">
                <input class="input-text_GPOUP_1" type="text" name="clas">
              </div>


            <div class="checkbox-panel">
              <label class="checkbox-label">
                <input type="checkbox" class="checkbox-input" name="additional_subject">
                <span class="checkbox-custom"></span>
              </label>
            </div>

            <div class="desktop-5-item_MER_1">
              <b class="b_m">Мероприятие</b>
            </div>
            <button type="submit" class="red">Редактировать</button>
      </form>
          </div>
        </div>


        <div class="redakt">
          <b class="b1">Редактирование занятие ${mainSubject.name}</b>
        </div>
  
        <div class="st_dn">
          <b class="b2">Старые данные</b>
        </div>
  
        <div class="nv_dn">
          <b class="b3">Новые данные</b>
        </div>

      <form action="/subject/delete/${id}" method="post">
       <button type="submit" class="del">Удалить</button>
      </form>


      </div>

    </div>
  </div>
</body>
</html>
  <#else >

    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <title>Расписание</title>
    <h3>Тут пусто</h3>
</#if>