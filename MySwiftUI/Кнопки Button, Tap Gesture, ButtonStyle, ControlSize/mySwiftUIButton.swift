//
//  mySwiftUIButton.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 27.12.2024.
//

import SwiftUI

struct mySwiftUIButton: View {
    
    @State var title = "Button not pressed"
    @State var Count = 0
    
    var body: some View {
        VStack (spacing:20){
            Text(title)
            
            //1 Вид кнопок
            Button("Press me!") {       //Это обычная кнопка в которой мы можем поменять только цвет текста
                self.title = "Button pressed"
            }
            .tint(Color.red)    //Изменение цвета текста кнопки
            
            //2 Вид кнопки
            Button {        //Это кнопка в которой можно изменить стиль с обычного активного текста
                self.title = "Button #2 pressed"
            } label: {
                Text("Press me #2")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 10))      //Тут мы задаем форму нашей кнопки, ну как она будет выглядеть.
                    )
                    //.tint(.black) - c помощью этого модификатора можно изменить цвет кнопки или изобрадения которое поставленно в кнопку
            }
            
            //3 Вид кнопки
            Button {
                self.title = "You like this: \(Count)"
                Count += 1
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 70, height: 70)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                    }
            }
            
            //4 Вид кнопки
            Button {
                self.title = "Button #4 pressed"
            } label: {
                Text("Finish".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .bold()
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .stroke(style: StrokeStyle(lineWidth: 2))
                    )
            }

        }
       
    }
}

#Preview {
    mySwiftUIButton()
}
