<!DOCTYPE html>
<html>
<#import "spring.ftl" as spring />
<head>
  <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
  <title>Расписание</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="initial-scale=1, width=device-width" />
  <link rel="stylesheet" type="text/css"
        href="<@spring.url '/public/desktop-pol.css'/>"/>
  <link rel="stylesheet" type="text/css"
        href="<@spring.url '/public/desktop-head.css'/>"/>
</head>
<body style="background: #466969;">
  <div class="desktop-1">
    <div class="des-1">
      <div class="tb_1">
        <a class="a_1" href="/calendar">Календарь</a>
        <a class="a_2" href="/notification">Уведомления</a>
        <a class="a_3" href="/create/subject">Добавить предмет</a>
        <a class="a_4" href="/office">Личный кабинет</a>
        <b class="ras2p"><a style="color: white" href="/">Расписание на каждый день</a></b>

      </div>
    </div>

    <#import "spring.ftl" as spring />
    <#list useHelpList as useOne>
      <#if user.id == useOne.id>



    <div class="pol">
      <div class="fam" >Почта:</div>
      <div class="name" >Группа:</div>
      <div class="email">${useOne.email}</div>
      <div class="group">${useOne.clas}</div>
      </#if>
      </#list>
      <#assign seen_style = []>
      <#list listSubjects?sort_by("clas")  as lineitem>
        <#assign groupId = lineitem.clas>
        <#if seen_style?seq_contains(groupId)>
        <#else>
          <#assign seen_style = seen_style + [groupId]>
        </#if>
      </#list>
      <form action="/office/settings/${user.id}" method="post">
        <label>
          <select class="group2" name="clas">
            <option value="Не выбрана">Не выбрана</option>
            <#list seen_style as subjectOne>
              <option value="${subjectOne}">${subjectOne}</option>
            </#list>
          </select>
        </label>
        <button class="but" type="submit">Изменить</button>
      </form>
    </div>

      </div>






</body>
</html>
