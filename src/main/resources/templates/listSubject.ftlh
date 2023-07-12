<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<#list listSubjects as SubjectOne>
    <h3><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</a></h3>
    <h3>${SubjectOne.auditorium} ${SubjectOne.timeStart} ${SubjectOne.timeEnd} ${SubjectOne.data} </h3>
</#list>

</body>
</html>