<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-5.css'/>"/>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inika:wght@700&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700;800;900&display=swap"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Kadwa:wght@400;700&display=swap"
    />
  </head>
<body>
  <div class="desktop-5-item">
    <div class="desktop-5-item_2">
      <div class="desktop-5-item_3">
        <div class="desktop-5-item_DATE">
          <textarea class="input-text_DATE" rows="4" cols="50" placeholder="${mainSubject.date} "></textarea>
        </div>
        <div class="desktop-5-item_NACH">
          <textarea class="input-text_NACH" rows="4" cols="50" placeholder=${mainSubject.timeStart}></textarea>
        </div>
        <div class="desktop-5-item_KON">
          <textarea class="input-text_KON" rows="4" cols="50" placeholder="${mainSubject.timeEnd}"></textarea>
        </div>
        <div class="desktop-5-item_PROD">
          <textarea class="input-text_PROD" rows="4" cols="50" placeholder="${mainSubject.auditorium}"></textarea>
        </div>
        <div class="desktop-5-item_GAL"></div>
        <#if mainSubject.additional_subject == true >
          <div class="desktop-5-item_GAL"></div>
          <div class="desktop-5-item_MER">
            <P>Мероприятие</P>
          </div>
        <#else>
        </#if>
      </div>
      <form action="/subject/settings/new/${id}" method="post">
      <div class="desktop-5-item_3_1">
        <div class="desktop-5-item_DATE_1">
          <input class="input-text_DATE_1" placeholder="Дата" type="date" name="date">
        </div>
        <div class="desktop-5-item_NACH_1">
          <input class="input-text_NACH_1" rows="4" cols="50" placeholder="Начало" type="time" name="timeStart">
        </div>
        <div class="desktop-5-item_KON_1">
          <input class="input-text_KON_1" rows="4" cols="50" placeholder="Конец" type="time" name="timeEnd">
        </div>
        <div class="desktop-5-item_PROD_1">
          <input class="input-text_PROD_1" rows="4" cols="50" placeholder="Аудитория" type="number" name="auditorium">
        </div>
        <div class="desktop-5-item_GAL_1"></div>
        <div class="desktop-5-item_MER_1">
          <P>Мероприятие</P> <input type="checkbox" name="additional_subject">
        </div>
        <input type="submit" value="Изменить"/>
      </div>
      </form>
      <div class="redakt">
        <b class="b1">Редактирование занятия</b>
      </div>

      <div class="st_dn">
        <b class="b2">Старые данные</b>
      </div>

      <div class="nv_dn">
        <b class="b3">Новые данные</b>
      </div>

      <div class="pred">
        <b class="b4">Математический анализ</b>
      </div>
    </div>
  </div>
</body>
</html>
