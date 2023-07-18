<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <meta charset="utf-8" />
    <title>Расписание</title>
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-6.css'/>"/>
  </head>
  <body>
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
            <#assign groupId1 = lineitem.user.id groupId2 = lineitem.subject.id>
            <#if seen_style1?seq_contains(groupId1) && seen_style2?seq_contains(groupId2)>
            <#elseif .now?string["yyyy-MM-dd"] == lineitem.subject.date && lineitem.user.id == user.id>
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
