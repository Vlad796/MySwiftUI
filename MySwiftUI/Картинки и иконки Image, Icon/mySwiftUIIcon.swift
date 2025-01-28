//
//  mySwiftUIIcon.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 18.12.2024.
//

import SwiftUI

struct mySwiftUIIcon: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")//Cуществуют еще многоцветные иконки, но когда мы их добавляем у нас они будут одноцветными. И что бы изменить одноцветность нам достаточно будет добавить модификатор .renderingMode
            .renderingMode(.original)
            .font(.largeTitle)   //Cистемные размеры
            .foregroundColor(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))     //К сожалению мы не можем использовать градиент на кратинках, но можем использовать однотонные цвета
            
        
        Image(systemName: "person.fill.badge.plus")
            .font(.system(size: 100))    //Тут мы задаем постоянный размер изображению, не зависимо от типа текста на устройстве
        
        Image(systemName: "person.fill.badge.plus")
            .resizable()    //Когда мы вызываем этот инструмент, мы можем настраивать соотношение сторон с помощью инструментов .aspectRatio
            .aspectRatio(contentMode: .fit)    //Модификатор .fill позволяет нам захватить большую часть фрейма(.frame), а модификатор .fit позволяет настроить изображение так, что бы оно оставалось в пределах фрейма(.frame) и пропорции изображения осталвались правильными. Так же вместо этих модификаторов мы можем использовать:
            .frame(width: 100, height: 100)     //Помимо изменения размера картинки через .font, мы можем использовать этот метод. Мы увеличили размер рамки, но размер картинки не увеличился. Мы можем изменить это с помощию инструмента .resizable
        
        Image(systemName: "person.fill.badge.plus")
            .resizable()
            .scaledToFit()  //Делает то же самое что и .aspectRatio(contentMode: .fit)
            //.scaledToFill()   //Делает то же самое что и .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    mySwiftUIIcon()
}
