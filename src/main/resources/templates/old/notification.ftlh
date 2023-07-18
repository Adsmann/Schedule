<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>

<#list listNotification as notificationOne>
    <#if .now?string["yyyy-MM-dd"] == notificationOne.subject.date && notificationOne.user.id == user.id >
        <h4>${notificationOne.subject.name}</h4>
        <h4>${notificationOne.subject.date}</h4>
        <h4>${notificationOne.subject.timeStart}</h4>
        <h4>${notificationOne.subject.timeEnd}</h4>
        <h4>${notificationOne.subject.auditorium}</h4>
    <#else>

    </#if>

</#list>

<h1></h1>
</body>
</html>