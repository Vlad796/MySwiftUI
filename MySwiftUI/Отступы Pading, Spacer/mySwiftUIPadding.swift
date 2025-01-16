//
//  mySwiftUIPadding.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.12.2024.
//

import SwiftUI

/*Еще можно комбинировать отступы
 .padding(.all, 10)
 .padding(.top, 20)
 то помимо всестороннего отступа, будет дополнительный сверху
 */

struct mySwiftUIPadding: View {
    var body: some View {
        //Padding добавляет растояние между элементами
        Text("Hello, World! Привет, мир!")
            .background(Color.white)//Тут мы задали задник именно для текстового поля. Что бы понимать, что мы не увеличили рамку с тестом, а просто увеличивает растояние отступа
        
            .padding()//Если добавить в скобки еще модификаторы .all, так же можно поставить отступы только по вертикали, горизонтали или только на какую-то определенную сторону. И после "," поставить какое то значение то растояние отступа увеличится
       
        
            .background(Color.blue)//если мы хотим что бы при увеличении текста, рамка не была фиксированной и меняла свои размеры вместе с текстом, то лучше добавить padding, а не frame
        
        //Пример падинга который направлен в определенную сторону
        Text("Hello, World! Привет, мир!")
            .background(Color.yellow)
            .padding(.horizontal, 20)//Можно еще .top, .vertical, .leading, .bottom, .trailing
            .background(Color.red)
        
        //Пример двойного padding, один из которых напрвален в одну сторону
        Text("Hello, World! Привет, мир!")
            .background(Color.yellow)
            .padding(.all, 10)
            .padding(.top, 20)
            .background(Color.red)
        
        //Как может применяться padding в реальной жизни
        Text("Привет, мир!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue)
            .padding(.leading)//Мы добавили тут padding для того что бы сделать отступ от края экрана
        
        VStack(alignment: .leading){
            Text("Привет, мир!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("Ну тут чисто для того что бы бало побольше строчек и так далее. Вообще кайф а не привет мир!")
        }
        //.background(Color.red)//Обозначение рамок текста
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .gray.opacity(0.4),
                        radius: 10,
                        x: 0, y: 10)
        )
        .padding(.horizontal, 10)//Отступ VStack по горизонтали от рамок экрана
        //.background(Color.green)
    }
}

#Preview {
    mySwiftUIPadding()
}
