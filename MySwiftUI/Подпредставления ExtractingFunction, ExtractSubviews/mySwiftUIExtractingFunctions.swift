//
//  mySwiftUIExtractingFunctions.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 28.12.2024.
//

import SwiftUI

//Извлекющая функция (Extracting functions) нужна для понятного чтения кода. То есть мы можем написать в той же кнопке код в котором должна выполняться загрузка данных в БД. И что бы не прописывать все это в одной кнопке, мы можем воспользоваться Extracting functions и вывести этот код за body и прописать все там, а потом вписать название этой функции в кнопку

//Так же мы можем сздавать отдельную переменную (Подзаголовка/subviews), по типу var body: some View, только вместо body будет другое название. И так как у нас по умолчанию запускается body, на другую похожую переменную мы будем только ссылаться.

struct mySwiftUIExtractingFunctions: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack{
            //  Background
            backgroundColor
                .ignoresSafeArea()
            
            //  Основной контент body
            contentLayer
            
            .foregroundStyle(.white)
        }
    }
    
    var contentLayer: some View {   //Пример подзаголовка(subviews). Тут мы выполняем основную часть кода
        VStack(spacing: 20){
            Text("Color")
                .font(.largeTitle)
            
            HStack(spacing: 30){
                Button {
                    changeColor()   //Пример извлекаемой функции. Когда мы прописываем действие кнопки вне тела(body)
                } label: {
                    Text("Change color")
                }
            }
        }
    }
    
    func changeColor(){
        backgroundColor = .yellow
    }
    
}

#Preview {
    mySwiftUIExtractingFunctions()
}
