//
//  mySwiftUIColor.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 17.12.2024.
//

import SwiftUI

struct mySwiftUIColor: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 13)
            .fill(
                //Color.primary     //primary - это цвет который который при переключении тем iPhone, темная и светлая, меняет и себя, с темной на светлую и наоборот
                
                //Color(#colorLiteral(red: 0, green: 1, blue: 0.9653099179, alpha: 1))     //что бы изменить цвет таким способом, нужно нажать на Edit -> Format -> Show Color и перенести выбранный цвет в скобки
                
                //Color(UIColor.secondarySystemBackground)    //Добавления переключаемого с темного на светлую тему, мягко-серого цвета
                
                Color("CustomColor")    //Тут мы используем цвет который мы задали в Assets
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 20)    //1 способ добавление теней
            .shadow(color: Color("CustomColor"), radius: 30, x: 10, y: -10 )    //2 вариант добавления теней, он более детальный. Еще можно настроить прозрачность тени с помощью инструмента .opecity(0.3 процент прозрачности тени) после назначения цвета
    }
}

#Preview {
    mySwiftUIColor()
}
