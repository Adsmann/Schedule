<#import "spring.ftl" as spring />
<#list useHelpList as useOne>
<#if user.id == useOne.id>
${useOne.email} ${useOne.clas}
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
        <select name="clas">
            <option value="Не выбрана">Не выбрана</option>
                <#list seen_style as subjectOne>
                        <option value="${subjectOne}">${subjectOne}</option>
                </#list>
        </select>
    </label>
    <input type="submit" value="Отправить">

</form>