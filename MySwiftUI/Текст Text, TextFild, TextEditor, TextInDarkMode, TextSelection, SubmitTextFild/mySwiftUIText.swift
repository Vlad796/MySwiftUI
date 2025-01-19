//
//  mySwiftUIText.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 17.12.2024.
//

import SwiftUI

struct mySwiftUIText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)//что бы добавить все возможные модификаторы для элемента нужно после него поставить "."
            .font(.title)//расшифровка: .font - модификатор, .largeTitle - шрифт
            .fontWeight(.medium)//отвечает за жирность букв, так же можно использовать .bold
            .underline()//подчеркивание
            .italic()//курсив
            .strikethrough()//вычеркивание
        
        //Альтернативное изменение текста
        Text("Hi, Vlad. How's the wife? How are the kids? How are you doing? I hope everything is fine")
//            .font(.title)
//            .bold()
//            .italic()
            .font(.system(size: 24, weight: .medium, design: .rounded))//Более детальное изменение шрифта. Но недостатком такого метода является отсутствие изменения шрифта, при изменении настроек iPhone
            .underline(true, color: Color.blue)
            //.strikethrough(true, color: Color.red)
            .baselineOffset(10)//Межстрочный интервал(если мы поставим -10, то межстрочный интервал будет не под текстом, а над ним)
            .kerning(1)//Интервал между буквами
            .multilineTextAlignment(.leading)//Выравнивание многострочного текста
            .foregroundColor(.red)//цвет шрифта
            .frame(width: 200, height: 200, alignment: .center)//изменение рамеров рамки в котором находится текст
            .minimumScaleFactor(0.5)//Изменение размера шрифта относительно поля в котором он находитя. И при изменении размера рамки, изменяется и размер шрифта
        
        //Выравнивание однострочного текста по левому краю
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .fontWeight(.medium)
            .underline()
            .italic()
            .frame(width: 200, height: 100, alignment: .leading)//Для выравнивания однострочного текста по определенному краю, нам нужно использовать frame
    }
}

#Preview {
    mySwiftUIText()
}
