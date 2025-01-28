//
//  ProfileView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 17.01.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var userName: String?
    @AppStorage("age") var userAge: Int?
    @AppStorage("gender") var userGender: String?
    @AppStorage("signed_in") var userSignedIn: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                //MARK: Аватарка пользователя
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.trailing, 20)
                Spacer()
                
                //MARK: Текст пользователя
                VStack{
                    Text("\(userName ?? "Nothing")")
                        .underline()
                        .font(.largeTitle)
                        .padding(.bottom, 20)
                    Text("Your age: \(userAge ?? 0)")
                        .frame(width: 200, alignment: .leading)
                    Text("Your gender: \(userGender ?? "Nothing")")
                        .frame(width: 200, alignment: .leading)
                }
                .frame(alignment: .leading)
            }
            //MARK: Стиль всего объекта
            .font(.headline)
            .foregroundStyle(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
            .padding(7)
            .padding(.vertical)
            .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
            
            //MARK: Кнопка "Выйти"
            VStack{
                Spacer()
                Text("Sing Up")
                    .foregroundStyle(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
                    .font(.headline)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .onTapGesture {
                        userName = nil
                        userAge = nil
                        userGender = nil
                        withAnimation(.spring()) {
                            userSignedIn = false
                        }
                    }
                    .padding()
                    .padding(.bottom, 20)
            }
            
        }
        
        
        
    }
}

#Preview {
    ProfileView()
}
