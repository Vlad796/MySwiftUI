//
//  mySwiftUIAnimations.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 30.12.2024.
//

import SwiftUI

struct mySwiftUIAnimations: View {
    
    @State var isAnimated = false
    //@State var animation: Animation = .default      //Можно использовать такой вариант @State переменной с анимацей
    
    var body: some View {
        VStack{
            Button {
                withAnimation(   //Функция, с помощью которой мы задаем вид анимации, и к чему будет относиться эта анимация
                    //Виды анимаций
                    .default    //Стандартный вид анимации
                    
                    //Модификаторы для анимация
                        //.delay(2.0)     //Модификатор который задает время задержки перед анимацией
                        .repeatCount(5, autoreverses: true)     //Модификатор с помощью которого мы можем задать колличество повторов. Настройка autoreverses - ставится в том случае, если мы хотим видеть "бумеранг" в анимации
                        //.repeatForever(autoreverses: false)     //Этот модификатор позволяет прокручивать анимацию бесконечно, до тех пор пока пользователь не перейдёт на другую страницу
                )
                {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300
                )
                .rotationEffect(.degrees(isAnimated ? 360 : 0))   //Настраиваем вращение(поворот) элемента
                .offset(y: isAnimated ? 300 : 0)    //Настраиваем смещение
            Spacer()
        }
    }
}

#Preview {
    mySwiftUIAnimations()
}
