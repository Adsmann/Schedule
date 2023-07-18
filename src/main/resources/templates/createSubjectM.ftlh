<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <meta charset="utf-8" />
    <title>Расписание</title>
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" href="./global.css" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-3.css'/>"/>
  </head>
  <body>
    <div class="desktop-3">
      <div class="tab_1">
        <div class="tab_2">
          <div class="zan_tab">
            <b class="zan_text"> Занятия</b>
          </div>

          <div class="tab_4">
            <b class="pred">Предмет</b>
            <b class="date">Дата</b>
            <b class="vrem">Время</b>
            <b class="aud">Аудитория</b>
            <#list listSubjects?sort_by("date") as SubjectOne>
              <div class="tab_pred">
                <div class="tab_pred_1_1">
                <b class="predmet"><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</b>
                <b class="date_1">${SubjectOne.date} </b>
                <b class="vrem_1">${SubjectOne.timeStart} - ${SubjectOne.timeEnd}</b>
                <b class="aud_1">${SubjectOne.auditorium}</b>
                </div>
                <div class="redact">
                  <b class="react_text"><a href="/subject/settings/${SubjectOne.id}">Редактировать</a></b>
                </div>
              </div>
            </#list>
        </div>
      </div>
      <div class="tab_3">
        <div class="dop_tab">
          <b class="dop_text">Добавление занятий</b>
        </div>
      <form action="/create/subject/create" method="post">
        <div class="Tab">
          <input class="input-text_1" placeholder="Название занятия" name="name" >
          <input class="input-text_2" placeholder="Дата" type="date" name="date" >
          <input class="input-text_3" placeholder="Начало" type="time" name="timeEnd" >
          <input class="input-text_4" placeholder="Дата" type="time" name="timeStart" >
          <input class="input-text_5" placeholder="Аудитория" type="number" name="auditorium">          <div >
            <button class="input-text_7" type="submit">
              <b class="text_1_1">Создать</b>
            </button>
          </div>
        </div>
      </form>
      </div>
      </div>

    </div>
  </body>
</html>
