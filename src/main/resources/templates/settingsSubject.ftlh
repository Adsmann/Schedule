<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <title>ChatPog</title>
</head>
<body>
<h4>${mainSubject}</h4>
<form action="/subject/settings/new/${id}" method="post">
  name: <input type="text" name="name">
  timeStart <input type="time" name="timeStart">
  timeEnd <input type="time" name="timeEnd">
  data <input type="date" name="data">
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