//
//  User.swift
//  AboutMeApp
//
//  Created by Дрозд Матвей on 02.12.2023.
//

struct User {
    let name: String
    let password: String
    let developer: Person
    
    static func getUserInfo() -> User {
        User(
            name: "Alexey",
            password: "1",
            developer: Person(
                name: "Matthew",
                surname: "Drozd",
                cityOfResidence: "Saint-Petersburg",
                busyness: "Student",
                fullDescription: "Я родился и вырос в городе Ейске. Отучился в физико-математическом лицее, но к сожалению, так и не смог полюбить точные науки. В период моего детства (7 лет) и до начала моего отрочества я занимался хореографическим искусством, но вследствие, по-моему мнению, несправедливого выбора танцоров на выступление в Сочи (я невероятно в том возрасте мечтал увидеть вживую пальму), и совершенно потеряв терпение я был вынужден отказаться от занятий танцами не доучившись года. Кроме того, я занимался карате (по-моему мнению, далеко не самым эффективным видом единоборств), тхэквондо и игрой на музыкальных инструментах (в дальнейшем из хобби я занимался БЖЖ и сейчас пробую себя в боксе). Я даже каким-то образом умудрился закончить музыкальную школу с красным аттестатом. Специализировался я на игре на ударных инструментах. Жаль, что я уже к сегодняшнему моменту мало что помню, и, кажется, совсем разучился играть на барабанной установке (не говоря уже о ксилофоне и виброфоне). Зная, что и Вы музыкант, я посчитал, что моей игре на инструментах нужно выделить чуть больше одного предложения. Ну и вот, таким образом, с горем пополам я закончил 11 классов лицея и поступил в Петербург. Какой прекрасный город, я думаю, Вы согласитесь со мной! И как долго я убеждал родителей позволить мне поступить именно сюда. Признаюсь, я к тому моменту ещё не знал, что это за город. Да и по большей часте мне было всё равно. Я поехал сюда за романтическим интересом (которая, как оно и бывает, в Петербург не поступила). Но как я вскоре был рад, что выбор пал на это прекрасное место! Я смог поступить лишь на коммерцию в СПбГЭУ на международные отношения. Многие говорят о бесполезности гуманитарного высшего образования. Хоть эти людю рассуждают с точки зрения последующего после обучения трудоустройства, не могу не заметить, насколько является преступным принижать пользу гуманитарного высшего образования. Обучение научило меня многому и невероятно эффективно развило мой кругозор. Осознав, однако, что та самая часть людей оказалась права насчёт трудоустройства, я принялся рассуждать насчёт магистратуры. Рассудил и выбор пал на Герцена. Подумал, что педагогическая деятельность является важнейшей профессией для общества, что работа по специальности учитель английского языка (особенно для представителя мужского пола) всегда найдётся и, что это в целом невероятно интересное занятие. Всё это, безусловно, оказалась правдой. Правда, мысли о будущей зарплате и, более того, о предстоящем, так выразимся, внеклассном занятии с целью внешкольного воспитания, побудили меня взять академический отпуск и обдумать всё ещё раз. Так, в общем то я и оказался на обучении под Вашим началом. Кроме того, мой друг-программист внёс свою лепту в моём выборе специальности и курсов. Он JS и блокчейн разработчик. Надеюсь, я вас не утомил своим рассказом. Был очень рад рассказать Вам о себе! P.S. Обидно, но я так и не смог передать это свойство в нужный экран."
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let cityOfResidence: String
    let busyness: String
    let fullDescription: String
}
