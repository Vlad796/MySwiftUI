//
//  mySwiftUISheets.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 02.01.2025.
//

import SwiftUI

struct mySwiftUISheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.blue)
                    .font(.title)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))  //модификатор для закругления граней
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()        //НИКОГДА НЕ ДОБАВЛЯТЬ УСЛОВНУЮ ЛОГИКУ В ЛИСТ
//            }
            
            //Так же можно вызвать лист который будет выходить на всё окно
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()      //Тут не будет возможности как то смахнуть этот лист для закрытия, только с помощью специальной кнопки закрытия
            }
        }
    }
}


                                            //ТУТ ЭМИТИРУЕТСЯ СОЗДАНИЕ ВТОРОГО ЭКРАНА
struct SecondScreen: View {
    
    @Environment(\.presentationMode/*Тут прописывается ключ окружения*/) var presentationMode   //это переменная которая привязывается к текущему представления(в нашем слечае странице). Ещё можно изменить "var presentationMode" на другое имя, но лучше оставить таким же как и ключ окружения
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.green
                .ignoresSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()     //Тут мы прописываем какую функцию будет выполнять presentationMode в кнопке
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(20)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    mySwiftUISheets()
}
