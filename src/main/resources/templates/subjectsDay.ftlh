<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<h3>${date}</h3>
<#list listSubjects as SubjectOne>
    <h3><a href="/subject/${SubjectOne.date}">${SubjectOne.name}</a></h3>
    <h3>${SubjectOne.auditorium} ${SubjectOne.timeStart} ${SubjectOne.timeEnd} ${SubjectOne.date} </h3>
    <#if SubjectOne.additional_subject == true >
        <h3>Мероприятие</h3>
    <#else>

    </#if>
</#list>

</body>
</html>