<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <title>Расписание</title>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/header.css'/>"/>
    <meta charset="utf-8" />
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
          <b class="zan">Расписание на ${month} месяц</b>
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
              <#if SubjectOne.date?cn?substring(6)?substring(0,2) == month >
                <div class="tab_pred">
                  <b class="predmet"><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</b>
                  <b class="date_1">${SubjectOne.date} </b>
                  <b class="vrem_1">${SubjectOne.timeStart} - ${SubjectOne.timeEnd}</b>
                  <b class="aud_1">${SubjectOne.auditorium}</b>
                </div>
              <#else>

              </#if>
            </#list>
          <#else>
            <#list listSubjects?sort_by("date") as SubjectOne>
              <#if us.clas == SubjectOne.clas>
                <#if SubjectOne.date?cn?substring(6)?substring(0,2) == month >
                  <div class="tab_pred">
                    <b class="predmet"><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</b>
                    <b class="date_1">${SubjectOne.date} </b>
                    <b class="vrem_1">${SubjectOne.timeStart} - ${SubjectOne.timeEnd}</b>
                    <b class="aud_1">${SubjectOne.auditorium}</b>
                  </div>
                <#else>
                </#if>
              </#if>
            </#list>
          </#if>
        </div>
        </div>

      </div>

    </div>
  </body>
</html>
