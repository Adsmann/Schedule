<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
${month}

<#list listSubjects as SubjectOne>
    <#if SubjectOne.date?cn?substring(6)?substring(0,2) == month >
        <h3><a href="/subject/${SubjectOne.date}">${SubjectOne.name}</a></h3>
        <h3>${SubjectOne.auditorium} ${SubjectOne.timeStart} ${SubjectOne.timeEnd} ${SubjectOne.date} </h3>
        <#if SubjectOne.additional_subject == true >
            <h3>Мероприятие</h3>
        <#else>

        </#if>
    <#else>

    </#if>


</#list>

</body>
</html>