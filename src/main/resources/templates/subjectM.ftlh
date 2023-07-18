<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />
<head>
    <title>Расписание</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/6.css'/>"/>
</head>
<body>
    <div class="main_bg">
        <div class="main_wrapper">
            <div class="main_info">
                <div class="main_block main_block__lesson">
                    <#if subject.additional_subject == true >
                        Мероприятие
                    <#else>
                        Занятие
                    </#if></div>
                <div class="main_block main_block__nol">${subject.name}</div>
                <div class="Tab">
                  <div class="input-text_1" >Дата: ${subject.date}</div>
                  <div class="input-text_3" >Начало: ${subject.timeStart}</div>
                  <div class="input-text_4">Конец: ${subject.timeEnd}</div>
                  <div class="input-text_5">Аудитория: ${subject.auditorium}</div>
                  <div class="input-text_7">
                      <#list comments as commentOne>
                          <#if (commentOne.contents)?has_content >
                      <div class="input-text_7_1">
                          <b class="text_1_1"style="padding-left: 10px;">${commentOne.contents}</b>
                          <div class="input-text_8">
                              <b class="input-text_2_1">${commentOne.user.email}</b>
                          </div>
                      </div>
                          <#else>

                          </#if>

                      </#list>







                  </div>
                </div>
                <div class="pan_1">
                    <form action="/subject/${id}/notification/create" method="post">
                        <div>
                        <button type="submit" class="pan_1_1" >Получить оповещение</button>
                        </div>
                            <input type="hidden" name="subject" value="${subject.id}">

                        </button>


                    </form>


                </div>
            </div>
            <form action="/subject/${id}/comment/create" method="post">
            <div>
                <button type="submit" class="note_button_1">Отправить</button>
            </div>
                <input type="hidden" name="subject" value="${subject.id}">

            <input class="input" type="text" name="contents" placeholder="Введите комментарий">
            </form>

            <div class="note_wrapper">
                <div class="note_inp">
                    <form action="/subject/${id}/note/create" method="post">
                    <div class="note_title">
                        <div class="main_block main_block__title">Заметка</div>
                    </div>
                    <div class="note_container">
                        <#assign x=0>
                        <#list notes as noteOne>
                            <#if noteOne.user.id == user.id && (noteOne.contents)?has_content >
                                <textarea placeholder="${noteOne.contents}" class="note_input" name="contents"></textarea>
                                <#assign x=1>
                            <#else>

                            </#if>

                        </#list>
                        <#if x=0>
                            <textarea placeholder="Заметка..." class="note_input" name="contents"></textarea>
                        </#if>
                    </div>
                        <input type="hidden" name="subject" value="${subject.id}">
                    <button class="note_button" type="submit">Отправить</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>