//
//  mySwiftUI@Binding.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 29.12.2024.
//

import SwiftUI

// @Binding - Позволяет связывать свойства, в которых хранятся данные, со свойством, которое эти данные отображает и изменяет.
//  @Binding соединяет свойство с источником достоверных данных, хранящимся в другом месте, вместо непосредственного хранения данных.

struct mySwiftUI_Binding: View {
    
    @State var backgroundColor: Color = .white
    @State var titel: String = "TITEL"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            
            VStack {
                Text(titel)
                ButtonView(backgroundColor: $backgroundColor, titel: $titel)   //Для привязки двух представлений используется знак "$"
            }

        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color     //И для того что бы компилятор не ругался на нас в этой части кода с вынесенной кнопкой. Нам надо указать свойство @Binding, для связки свойств

    @State var buttonStyle: Color = .blue   //Если нам нужно изменить что то именно в этой части кода, то нам лучше будет создать изменяемую переменную именно в этом состоянии
    
    @Binding var titel: String
    
    var body: some View {
        Button {
            backgroundColor = .gray     //при переносе кода в подпредставление, нам тут выдается ошибка, так как компилятор не понимает откуда взята переменная backgroundColor
            buttonStyle = .indigo
            titel = "PRESSED"
        } label: {
            Text("Press Me")
                .foregroundStyle(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(buttonStyle)
                .cornerRadius(10)
        }
    }
}

#Preview {
    mySwiftUI_Binding()
}


