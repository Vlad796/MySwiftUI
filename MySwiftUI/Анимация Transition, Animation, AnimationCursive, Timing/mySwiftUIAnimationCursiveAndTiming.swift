//
//  mySwiftUIAnimationCursiveAndTiming.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 30.12.2024.
//

import SwiftUI

//Тут мы рассматриваем то как будет выполняться анимация, ее тайминги и вид анимации. Она может выполняться с одной скоростью, может сначала ускоряться а потом замедляться, может сначала замедляться а потом уже ускоряться

struct mySwiftUIAnimationCursiveAndTiming: View {
    
    @State var isAnimated = false
    @State var timing = 10.0
    var body: some View {
        VStack{
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            //Стандартная анимация
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                .animation(.default, value: (isAnimated))
                //.animation(.default(duration: timing), value: (isAnimated))  //Можно еще настроить выполнение этой анимации, т.е. за какой количество времени будет выполняться эта анимация
            
            //Анимация выполняется так же как и .default, но только с небольшим замедлением
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.red)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                .animation(.linear, value: (isAnimated))
                //.animation(.linear(duration: timing), value: (isAnimated))  //Можно еще настроить выполнение этой анимации, т.е. за какой количество времени будет выполняться эта анимация
            
            //Анимация, как пружина с отскоком
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.black)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                .animation(.bouncy, value: (isAnimated))
                //.animation(.bouncy(duration: timing), value: (isAnimated))  //Можно еще настроить выполнение этой анимации, т.е. за какой количество времени будет выполняться эта анимация
            
            //Анимация, как .bouncy только медленнее
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                //.animation(.spring, value: (isAnimated))
                .animation(.spring(Spring(mass: 1/*Вес пружины*/, stiffness: 100/*Скорость пружины*/, damping: 10/*Жесткойсть пружины*/)), value: (isAnimated))     //Вариант для настройки анимации .spring
            
            //Анимация медленная в начале и ускоренная в конце. Это лучше использовать, если нужно чтобы что то появилось на экране
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.orange)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                .animation(.easeIn, value: (isAnimated))
                //.animation(.easeIn(duration: timing), value: (isAnimated))  //Можно еще настроить выполнение этой анимации, т.е. за какой количество времени будет выполняться эта анимация
            
            //Эта анимация будет сначала бытсрой, потом медленной, а потом опять быстрой
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                .animation(.easeInOut, value: (isAnimated))
                //.animation(.easeInOut(duration: timing), value: (isAnimated))  //Можно еще настроить выполнение этой анимации, т.е. за какой количество времени будет выполняться эта анимация
            
            //Сначала быстро, потом медленно. Это лучше использовать, если нужно чтобы что то появилось на экране
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: isAnimated ? 300 : 100, height: 100)
                .animation(.easeOut, value: (isAnimated))
                //.animation(.easeOut(duration: timing), value: (isAnimated))  //Можно еще настроить выполнение этой анимации, т.е. за какой количество времени будет выполняться эта анимация

        }
    }
}

#Preview {
    mySwiftUIAnimationCursiveAndTiming()
}
