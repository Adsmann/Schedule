<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <meta charset="utf-8" />
    <title>Расписание</title>
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-6.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-head.css'/>"/>
  </head>
  <body>
  <div class="des-1">
    <div class="tb_1">
      <a class="a_1" href="/calendar">Календарь</a>
      <a class="a_2" href="/notification">Уведомления</a>
      <a class="a_3" href="/create/subject">Добавить предмет</a>
      <a class="a_4" href="/office">Личный кабинет</a>
      <b class="ras2p"><a style="color: white" href="/">Расписание на каждый день</a></b>

    </div>
  </div>
    <div class="desktop-6">
      <div class="tab_1">
        <div class="RASP">
          <b class="zan">Уведомления</b>
        </div>

        <div class="tab_2">
          <b class="pred">Предмет</b>
          <b class="date">Дата</b>
          <b class="vrem">Время</b>
          <b class="aud">Аудитория</b>
          <#assign seen_style1 = [] seen_style2 = []>
          <#list listNotification  as lineitem>
            <#assign groupId1 = lineitem.useHelp.id groupId2 = lineitem.subject.id>
            <#if seen_style1?seq_contains(groupId1) && seen_style2?seq_contains(groupId2)>
            <#elseif .now?string["yyyy-MM-dd"] == lineitem.subject.date && lineitem.useHelp.id == user.id>
              <#assign seen_style1 = seen_style1 + [groupId1] seen_style2 = seen_style2 + [groupId2]>
              <div class="tab_pred">
                <b class="predmet"><a href="/subject/${lineitem.subject.id}">${lineitem.subject.name}</b>
                <b class="date_1">${lineitem.subject.date}</b>
                <b class="vrem_1">${lineitem.subject.timeStart} - ${lineitem.subject.timeEnd}</b>
                <b class="aud_1">${lineitem.subject.auditorium}</b>
              </div>
            <#else>

            </#if>
          </#list>

        </div>
        </div>

      </div>

    </div>
  </body>
</html>
