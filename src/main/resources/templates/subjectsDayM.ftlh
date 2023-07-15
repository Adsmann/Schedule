<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-6.css'/>"/>
  </head>
  <body>
    <div class="desktop-6">
      <div class="tab_1">
        <div class="RASP">
          <b class="zan">Расписание на ${date}</b>
        </div>

        <div class="tab_2">
          <b class="pred">Предмет</b>
          <b class="date">Дата</b>
          <b class="vrem">Время</b>
          <b class="aud">Аудитория</b>
            <#list listSubjects as SubjectOne>

              <#if SubjectOne.date == date >
                <div class="tab_pred">
                  <b class="predmet"><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</b>
                  <b class="date_1">${SubjectOne.date} </b>
                  <b class="vrem_1">${SubjectOne.timeStart} - ${SubjectOne.timeEnd}</b>
                  <b class="aud_1">${SubjectOne.auditorium}</b>
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
