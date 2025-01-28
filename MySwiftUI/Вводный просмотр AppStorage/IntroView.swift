//
//  IntroView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 16.01.2025.
//

import SwiftUI

/*
 AppStorage - Хранилище приложения
 @AppStorage("signed_in") - тут мы задаем название для поля в хранилище
 */

struct IntroView: View {
    
    @AppStorage("signed_in") var userSignedIn: Bool = false     //Проверка пользователя на вход
    
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color(#colorLiteral(red: 0.8862745098, green: 0.2117647059, blue: 0.2117647059, alpha: 1)), Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1))], center: .topLeading, startRadius: 0.3, endRadius: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            
            if userSignedIn {
                ProfileView()
            }else {
                OnbordingView()
            }
        }
    }
}

#Preview {
    IntroView()
}
