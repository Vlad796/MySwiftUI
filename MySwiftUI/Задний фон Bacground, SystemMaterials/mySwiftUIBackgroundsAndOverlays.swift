//
//  mySwiftUIBackgroundsAndOverlays.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 18.12.2024.
//

import SwiftUI

struct mySwiftUIBackgroundsAndOverlays: View {
    var body: some View {
        //Как все что мы сделали сегодня объеденить
        Image(systemName: "paperplane.fill")
            .font(.system(size: 30))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.8741957545, blue: 0.9401775002, alpha: 1)))
            .frame(width: 100, height: 100)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.6568708609)), radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.red)
                            .overlay(content: {
                                Text("5")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                            })
                            .shadow(color: Color(#colorLiteral(red: 1, green: 0.4483365417, blue: 0.5002648234, alpha: 0.7617963576)), radius: 10, x: 5, y: 5)
                            .frame(width: 30, height: 30)
                    })
            )
        
        //Background накладывается друг под другом
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)))     //Настройка цвета текста
            .frame(width: 120, height: 120)
            .background(    //Настройка бэкграунда текста
                //Color.red   //Цвет фона
                //LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)    //Градиента для фона
                Circle()    //задаем бэкгранду форму круга и настраиваем ее
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)), Color(#colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100)
            )
            //Создаем еще один фрейм с рамками побольше чем предыдущий
            .background(    //Задаем новый бэкграунд с кругом и настраиваем его
                Circle()
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)), Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120)
            )
        
        //Overlay накладывается друг на друга
        Circle()
            .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)), Color(#colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))], startPoint: .leading, endPoint: .trailing))
            .frame(width: 120, height: 120)
            .overlay {
                Circle()
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)), Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)))
               
            }
        
        //Совмещение Overlay и Background
        Circle()
            .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))], startPoint: .leading, endPoint: .trailing))
            .frame(width: 100, height: 100)
            .overlay {
                Text("Hi, Vlad")
                    .foregroundColor(Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)))
                    .frame(width: 120, height: 120)
            }
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1))], startPoint: .leading , endPoint: .trailing))
                    .frame(width: 120, height: 120)
            )
        
        //Просто пример как можно перемещать фигуры созданные оверлеем и бэкграундом
//        Rectangle()
//            .fill(Color.blue)
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .topLeading, content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 50, height: 50)
//            })
//            .background(alignment: .topLeading) {
//                Rectangle()
//                    .frame(width: 150, height: 150)
//            }
    }
}

#Preview {
    mySwiftUIBackgroundsAndOverlays()
}
