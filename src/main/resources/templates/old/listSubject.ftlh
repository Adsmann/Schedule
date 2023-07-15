<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<#list listSubjects as SubjectOne>
    <h3><a href="/subject/${SubjectOne.id}">${SubjectOne.name}</a></h3>
    <h3>${SubjectOne.auditorium} ${SubjectOne.timeStart} ${SubjectOne.timeEnd} ${SubjectOne.date} </h3>

    <#if SubjectOne.additional_subject == true >
        <h3>Мероприятие</h3>
    <#else>

    </#if>
</#list>
<#assign seen_style = []>
<#list listSubjects?sort_by("date")  as lineitem>
    <#assign groupId = lineitem.date>
    <#if seen_style?seq_contains(groupId)>
    <#else>
        <#assign seen_style = seen_style + [groupId]>
        <a href="/subjects/day/${groupId}">${groupId}</a>
    </#if>
</#list>

</body>
</html>