//
//  mySwiftUIExtractSubviews.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 28.12.2024.
//

import SwiftUI

//Использование извлечения подпредставления(Extract Subviews) обусловленно тем, что когда мы это делаем, мы можем изменять содержимое подпредставления, а когда мы просто создаем отдельную функцию, то там мы не можем изменить содержимое.

struct mySwiftUIExtractSubviews: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack {
            Color(backgroundColor)
                .ignoresSafeArea(.all)
            
            contentLayer    //Применение двух структур упрощающих чтение кода
            }
            .foregroundStyle(.white)
        }
    
    var contentLayer: some View {
        HStack {
            ExtractedView(name: "I", what: "Love", who: "Apple", color: .indigo)
            ExtractedView(name: "I", what: "Love", who: "Apple", color: .purple)
            ExtractedView(name: "I", what: "Love", who: "Apple", color: .cyan)
            ExtractedView(name: "I", what: "Love", who: "Apple", color: .mint)
        }    //Благодаря извлечению подпредставления можнно избавиться от большого кода в body и это никак не повлияет на понятность кода. И еще можно создавать множество таких объектов с помощью этого извлечения
    }
    
    }


#Preview {
    mySwiftUIExtractSubviews()
}

struct ExtractedView: View {
    
    let name: String
    let what: String
    let who: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 10){
            Text(name)
            Text(what)
            Text(who)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
