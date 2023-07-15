<!DOCTYPE html>
<html lang="en">
<#import "spring.ftl" as spring />
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>6 страничка</title>
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
                    </#if>
                </div>
                <div class="main_block main_block__nol">${subject.name}</div>
            </div>

            <div class="note_wrapper">
                <div class="note_inp">
                    <div class="note_title">
                        <div class="main_block main_block__title">заметка</div>
                    </div>
                    <div class="note_container">
                        <textarea placeholder="Заметка..." class="note_input"></textarea>
                    </div>
                    <button class="note_button">Отправить</button>
                    
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>