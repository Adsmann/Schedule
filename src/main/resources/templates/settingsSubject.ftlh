<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>

</head>
<body>
<h4>${mainSubject.name}</h4>
<h3>${mainSubject.auditorium} ${mainSubject.timeStart} ${mainSubject.timeEnd} ${mainSubject.date} </h3>
<#if mainSubject.additional_subject == true >
  <h3>Мероприятие</h3>
<#else>

</#if>
<form action="/subject/settings/new/${id}" method="post">
  name: <input type="text" name="name" >
  timeStart <input type="time" name="timeStart">
  timeEnd <input type="time" name="timeEnd">
  data <input type="date" name="date">
  auditorium <input type="number" name="auditorium">
  additional_subject <input type="checkbox" name="additional_subject">
  <input type="submit" value="Изменить"/>
</form>
<form action="/subject/delete/${id}" method="post">
  <input type="submit" value="Delete">
  </form>
</form>

</body>
</html>