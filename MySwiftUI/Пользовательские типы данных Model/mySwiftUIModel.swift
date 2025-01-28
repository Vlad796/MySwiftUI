//
//  mySwiftUIModel.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 15.01.2025.
//

import SwiftUI

struct userName: Identifiable {
    let id: String = UUID().uuidString    //Задаем автоматичекое ID с помощью UUID() и задаем ей значение создания строкового типа данных
    let name: String
    let login: String
    let folowers: Int
    let isVariable: Bool
}

struct mySwiftUIModel: View {
    
    //Обычный массив с выводом данных пользователей, но у реальных пользователей может быть что угодня в этих строчках дынных
    /*@State var userData: [String] = [
        "Vlad", "Pasha", "Sergey", "Alex"
    ]*/
    
    @State var userData: [userName] = [
        userName(name: "Vlad", login: "VladVV228", folowers: 100, isVariable: true),
        userName(name: "Pashe", login: "SkinHead", folowers: 50, isVariable: false),
        userName(name: "Dima", login: "dimaDoma", folowers: 300, isVariable: false),
        userName(name: "Sveta", login: "Svetik43", folowers: 350, isVariable: true)     //Для подтверждения верефикации 
        ]
    
    var body: some View {
        NavigationView {
            List {
                //Обычный цикл с выводом данных пользователей, но у реальных пользователей может быть что угодня в этих строчках дынных
                /*ForEach(userData, id: \.self) { user in
                    HStack{
                        Circle()        //Типо аватарка профиля
                            .frame(width: 30, height: 30)
                        Text(user)
                    }
                }*/
                ForEach(userData) { user in     //Для того что бы все работало корректно, нужно задать struct userName значение идентификатора
                    HStack{
                        Circle()        //Типо аватарка профиля
                            .frame(width: 30, height: 30)
                        HStack{
                            VStack(alignment: .leading){
                                Text(user.name)   //Тут можно настроить то что будет выводиться на экран
                                    .font(.headline)
                                    .foregroundStyle(Color.primary)
                                Text("@\(user.login)")
                                    .font(.caption)
                                    .foregroundStyle(Color.secondary)
                            }
                            Spacer()
                            if user.isVariable {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundStyle(Color.blue)
                            }
                            VStack(alignment: .trailing){
                                Text("\(user.folowers)")
                                    .font(.caption)
                                    .foregroundStyle(Color.secondary)
                                Text("folowers")
                                    .font(.caption)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    mySwiftUIModel()
}
