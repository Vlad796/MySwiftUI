//
//  mySwiftUITransition.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 02.01.2025.
//

import SwiftUI

struct mySwiftUITransition: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack{
            VStack{
                Button {
                    withAnimation {
                        showView.toggle()
                    }
                } label: {
                    Text("Button")
                }
                Spacer()
                
                //Мы можем сделать так что бы прямоугольник при значении false вообще не существовал в иерархии экрана, а если и появлялся, то со специальной переход
                if showView {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        //.transition(AnyTransition.scale.animation(.easeInOut))    // Как можно написать переход и анимацию в одну стройчку
                        .transition(.asymmetric( //это настраиваемый переход. Тут мы можем настроить появление и счезновение
                            insertion: .move(edge: .leading),
                            removal: .move(edge: .bottom)
                        ))
                        .animation(.bouncy, value: showView)
                }
                
                //Тут мы работаем с элементом который уже есть в иерархии экрана, и поэтому он всегда бедет на нем вне зависимости от того какая у него прозрачность
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(height: UIScreen.main.bounds.height * 0.5/*Способ настройки элемента, что бы он был четко на тот размер экрана, который нам нужен*/)
//                    .opacity(showView ? 1 : 0)
//                    .animation(.easeOut, value: showView)
            }
        }
        
    }
}

#Preview {
    mySwiftUITransition()
}
