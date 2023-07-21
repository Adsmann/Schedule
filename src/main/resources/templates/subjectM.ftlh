<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />
<head>
    <link rel="icon" type="image/x-icon" href="<@spring.url '/public/imgs_touch.png'/>">
    <title>Расписание</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/6.css'/>"/>
    <link rel="stylesheet" type="text/css"
          href="<@spring.url '/public/desktop-head.css'/>"/>
</head>
<body>
<div class="des-1">
    <div class="tb_1">
        <a class="a_1" href="/calendar">Календарь</a>
        <a class="a_2" href="/notification">Уведомления</a>
        <a class="a_3" href="/create/subject">Добавить предмет</a>
        <a class="a_4" href="/office">Личный кабинет</a>
        <b class="ras2p"><a style="color: white" href="/">Расписание на каждый день</a></b>

    </div>
</div>
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
                          <b class="text_1_1" style="padding-left: 10px;">${commentOne.contents}</b>
                          <div class="input-text_8">
                              <b class="input-text_2_1">${commentOne.useHelp.email}</b>
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
                            <input type="hidden" name="id" value="${id+99}">

                            <input type="hidden" name="subject" value="${subject.id}">

                        </button>
                        </div>


                    </form>


                </div>
            </div>
            <form action="/subject/${id}/comment/create" method="post">
                <input type="hidden" name="subject" value="${subject.id}">
                <input class="input" type="text" name="contents" placeholder="Введите комментарий">
                <input type="hidden" name="id" value="${id+99}">

                <div>
                <button type="submit" class="note_button_1">Отправить</button>
            </div>


            </form>

            <div class="note_wrapper">
                <div class="note_inp">
                    <form action="/subject/${id}/note/create" method="post">
                        <input type="hidden" name="id" value="${id+99}">
                    <div class="note_title">
                        <div class="main_block main_block__title">Заметка</div>
                    </div>
                    <div class="note_container">
                        <#assign idsort=0>
                        <#assign x=1>
                        <#list notes as noteOne>
                            <#if noteOne.useHelp.id == user.id && (noteOne.contents)?has_content >
                                <#assign idsort=noteOne.id>
                            <#else>

                            </#if>

                        </#list>
                        <#assign x=0>
                        <#list notes?sort_by("id") as noteOne>
                            <#if noteOne.id==idsort && noteOne.useHelp.id == user.id && (noteOne.contents)?has_content >
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