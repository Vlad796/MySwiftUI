//
//  mySwiftUINavigationView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 03.01.2025.
//

import SwiftUI

struct mySwiftUINavigationView: View {
    var body: some View {
        NavigationView {                        //НЕЛЬЗЯ ИСПОЛЬЗОВАТЬ NavigationView 2 РАЗА
            ScrollView {
                
                NavigationLink("Ссылка на другую страницу",
                               destination: myOtherScreen())  //Навигационная ссылка, с помощью которой можно пройти на другой экран
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle(Text("My titel"))
            //.navigationBarTitleDisplayMode(.automatic) //Тут мы можем настроить вид заголовка
            .toolbar {
                NavigationLink {
                    myOtherScreen()
                } label: {
                    Image(systemName: "person.fill")
                }
                Spacer()
                NavigationLink {
                    myOtherScreen3()
                } label: {
                    Image(systemName: "gear")
                        .foregroundStyle(Color.red)
                }
            }
        }
    }
}

struct myOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
                Color.red
                .ignoresSafeArea(.all)
                .navigationTitle(Text("My other titel"))        //Тут мы тоже можем добавить навигационную ссылку на другой экран и так может продолжаться до конца
                .navigationBarHidden(true)      //Это используется если мы хотим отключить отображение заголовка и кнопки "Возвращения" до опред. момента
            
            VStack {
                Text("Hello, World!")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}


struct myOtherScreen3: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
                Color.red
                .ignoresSafeArea(.all)
                .navigationTitle(Text("My other titel"))        //Тут мы тоже можем добавить навигационную ссылку на другой экран и так может продолжаться до конца
                .navigationBarHidden(true)      //Это используется если мы хотим отключить отображение заголовка и кнопки "Возвращения" до опред. момента
            
            VStack {
                Text("Seatings")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}
#Preview {
    mySwiftUINavigationView()
}
