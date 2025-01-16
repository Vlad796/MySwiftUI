//
//  mySwiftUISpacer.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.12.2024.
//

import SwiftUI

struct mySwiftUISpacer: View {
    var body: some View {
        //Использование картинок и Spacer. И размещение элементов вверх экрана
        VStack{
            HStack{
                Image(systemName: "gear")
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                Image(systemName: "display")//Если мы хотим сделать все картинки одного размера, не обязательно прописывать модификатор для каждой картинки, можно прописать его стразу для Stack
            }
            .font(.title)
            //.background(Color.green)
            .padding(.horizontal)
            //.background(Color.red)
            Spacer()
                .frame(width: 10)
                .background(Color.blue)
        }
//        HStack{
//            Rectangle()
//                .frame(width: 100, height: 100)
//            Spacer()//Spacer занимает столько места, сколько потребуется до краев. И если размер одного элемента увеличится, то размер Spacer изменится. Что бы сжать Spacer до минимума, у него есть модификатор (minLength:
//                .frame(height: 20)
//                .background(Color.blue)//Для отображения Spacer
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//        }
//        .background(Color.red)
//        
//        //Если разместить Spacer в коде перед всеми фигурами, то он просто сдвинет их в одну стороу
//        HStack{
//            Spacer()
//                .frame(height: 20)
//                .background(Color.blue)
//            Rectangle()
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//        }
//        .background(Color.red)
//        HStack{
//            Rectangle()
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//            Spacer()
//                .frame(height: 20)
//                .background(Color.blue)
//        }
//        .background(Color.red)
//        
//        //Если добавлять несколько Spacer в один Stack, то они будут все одно размера
//        HStack{
//            Spacer()
//                .frame(height: 10)
//                .background(Color.blue)
//            Rectangle()
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.blue)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.blue)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.blue)
//        }
//        //.background(Color.red)
    }
}

#Preview {
    mySwiftUISpacer()
}
