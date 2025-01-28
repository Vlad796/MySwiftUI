//
//  mySwiftUIScrollView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 23.12.2024.
//

import SwiftUI
//
struct mySwiftUIScrollView: View {
    var body: some View {
        //ScrollView многострочный. Он работает как по вертекали, так и по горизонтали
        ScrollView(.vertical, showsIndicators: false) {    //ScrollView для горизонтального просмотра
               
            LazyVStack {    //Ленивый VStack - используется для того что бы не прогружать всю информацию сразу, а только ту которая сейчас на экране. Лучше использовать если у нас очень большой объем данных и нам не нужна полная програзка этих данных
                ForEach((0..<50)) { index in    //Цикл для вывода прямоугольников по горизонтали
                    ScrollView(.horizontal) {   //ScrollView для вертикального просмотра
                        LazyHStack {    //Ленивый НStack - используется для того что бы не прогружать всю информацию сразу, а только ту которая сейчас на экране. Лучше использовать если у нас очень большой объем данных и нам не нужна полная програзка этих данных 
                            ForEach(0..<5) { index in   //Цикл для квадратов по горизонтали
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.white)
                                    .frame(width: 250, height: 200)
                                    .shadow(color: Color.gray, radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        
        // ScrollView с расширенными настройками
//        ScrollView(.horizontal /* сюда можно добавить showIndicators для отображения индикатора*/) {
//            HStack {
//                ForEach((0..<50)) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 700)
//                }
//            }
//        }
        
        //Использование обычного ScrollView без дополнительной настройки
//        ScrollView {
//            ForEach((0..<50)) { index in
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 300, height: 300)
//            }
//        }
    }
}

#Preview {
    mySwiftUIScrollView()
}
