<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
  <head>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <meta charset="utf-8" />
    <title>Расписание</title>
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" href="./global.css" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-3.css'/>"/>
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
          <input class="input-text_1" placeholder="Название" name="name" >
          <input class="input-text_2" placeholder="Дата" type="date" name="date" >
          <input class="input-text_3" placeholder="Начало" type="time" name="timeStart" >
          <input class="input-text_4" placeholder="Конец" type="time" name="timeEnd" >
          <input class="input-text_5" placeholder="Аудитория" type="number" name="auditorium">
          <input class="input-text_6" placeholder="Группа" type="text" name="clas">
          <div class="checkbox-panel">
            <label class="checkbox-label">
              <input type="checkbox" class="checkbox-input">
              <span class="checkbox-custom"></span>
              <span class="checkbox-text">Мероприятие</span>
            </label>
          </div>
          <div >
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
