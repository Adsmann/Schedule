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
          href="<@spring.url '/public/header.css'/>"/>
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
          <b class="zan">Расписание всех занятий</b>
        </div>

        <div class="tab_2">
          <b class="pred">Предмет</b>
          <b class="date">Дата</b>
          <b class="vrem">Время</b>
          <b class="aud">Аудитория</b>
          <#list useHelpList as useOne>
            <#if user.id == useOne.id>
             <#assign us=useOne>
            </#if>
          </#list>
          <#if us.clas == "Не выбрана">
            <#list listSubjects?sort_by("date") as SubjectOne>
            <div class="tab_pred">
              <b class="predmet"><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</b>
              <b class="date_1">${SubjectOne.date} </b>
              <b class="vrem_1">${SubjectOne.timeStart} - ${SubjectOne.timeEnd}</b>
              <b class="aud_1">${SubjectOne.auditorium}</b>
            </div>
            </#list>
            <#else>
            <#list listSubjects?sort_by("date") as SubjectOne>
              <#if us.clas == SubjectOne.clas>
                <div class="tab_pred">
                  <b class="predmet"><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</b>
                  <b class="date_1">${SubjectOne.date} </b>
                  <b class="vrem_1">${SubjectOne.timeStart} - ${SubjectOne.timeEnd}</b>
                  <b class="aud_1">${SubjectOne.auditorium}</b>
                </div>
              </#if>
            </#list>
          </#if>
        </div>
        </div>

      </div>

    </div>
  </body>
</html>
