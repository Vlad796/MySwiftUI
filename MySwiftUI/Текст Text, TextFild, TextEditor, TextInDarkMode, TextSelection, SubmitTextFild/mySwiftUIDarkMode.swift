//
//  mySwiftUIDarkMode.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 10.01.2025.
//

import SwiftUI

struct mySwiftUIDarkMode: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20){
                    Text("This is color PRIMARY")
                        .foregroundStyle(Color.primary)     //Этот текст будет автоматически переключаться при изменении темы телефона
                    Text("This is color SECONDARY")
                        .foregroundStyle(Color.secondary)       //Этот текст будет автоматически переключаться при изменении темы телефона
                    Text("This is color DARK")
                        .foregroundStyle(Color.black)       //Этот текст будет виден только на светлом фоне
                    Text("This is color WHITE")
                        .foregroundStyle(Color.white)       //Этот текст будет виден только на темном фоне
                    Text("This is color GREEN")
                        .foregroundStyle(Color.green)       //Этот текст будет виден при любой теме
                    Text("This is color CUSTOMER")
                        .foregroundStyle(Color("customDarkMode"))   //Этот цвет мы задаем самостоятельно в папке Assets
                }
            }
            .navigationTitle(Text("Dark Mode"))
        }
    }
}

#Preview {
    Group{
        mySwiftUIDarkMode()
        mySwiftUIDarkMode().environment(\.colorScheme, .dark)
    }
    
}
