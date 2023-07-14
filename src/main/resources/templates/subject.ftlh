<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<h3>${subject.name}</h3>
<h3>${subject.auditorium} ${subject.timeStart} ${subject.timeEnd} ${subject.date} </h3>
<#if subject.additional_subject == true >
    <h3>Мероприятие</h3>
<#else>

</#if>
COMMENT
<#list comments as commentOne>
    <#if (commentOne.contents)?has_content >
        <h4>${commentOne.user.email}</h4>
        <h4>${commentOne.contents}</h4>
    <#else>

    </#if>

</#list>


<form action="/subject/${id}/comment/create" method="post">
    text : <input type="text" name="contents">
    <input type="hidden" name="subject" value="${subject.id}">

    <input type="submit" value="Create">
</form>
NOTE
<#list notes as noteOne>
    <#if noteOne.user.id == user.id && (noteOne.contents)?has_content >
        <h4>${noteOne.contents}</h4>
    <#else>

    </#if>
</#list>

<form action="/subject/${id}/note/create" method="post">
    text : <input type="text" name="contents">
    <input type="hidden" name="subject" value="${subject.id}">

    <input type="submit" value="Create">
</form>
notification
<form action="/subject/${id}/notification/create" method="post">
    <input type="hidden" name="subject" value="${subject.id}">
    <input type="submit" value="Create">
</form>
</body>
</html>