//
//  mySwiftUITernaryOperators.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 30.12.2024.
//

import SwiftUI

//Тернарные опеаторы работают как операторы if else, только он записывается в разы короче

struct mySwiftUITernaryOperators: View {
    
    @State var rectangleColor: Bool = false
    
    var body: some View {
        VStack{
            Button("Button 1 \(rectangleColor.description)") {
                rectangleColor.toggle()     //После того как мы создали @State-переменную, и привязали ее к кнопк. Мы можем использовать оператор if else для изменения цвета прямоугольника.
            }
            
            //Мы можем сделать так, но так же можно сделать все куда короче, в одну строчку кода.
//            if rectangleColor {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)     //При выполнении этого оператора, происходит постоянное удаление и создание новых прямоугольников с разными цветами
//            }
            
            //Тернарный оператор можно использовать во всех модификаторах
            Text (rectangleColor ? "Starting state" : "Finished state")
            
            RoundedRectangle(cornerRadius: rectangleColor ? 20 : 10)
                .fill(rectangleColor ? Color.blue : Color.red)   //Изменение цвета можно произвести с помощью Тернарного оператора в виде знака "?"
                .frame(width: 200, height: 100)
            //После стандартного создания проверочных объектов. Мы ставил задачу, что бы при нажатии на кнопку изменялся цвет прямоугольника. Ну тут мы изспользуем значение @State для обозначения изменяющейся переменной
        }
    }
}

#Preview {
    mySwiftUITernaryOperators()
}
