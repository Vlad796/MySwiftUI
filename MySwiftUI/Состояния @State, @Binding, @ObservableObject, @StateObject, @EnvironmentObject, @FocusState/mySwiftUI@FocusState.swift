//
//  mySwiftUI@FocusState.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

struct mySwiftUI_FocusState: View {
    
    @State var titelAlert = "SingUp"
    @State var showAlert = false
    
//    enum userSingUpData: Hashable {     //Более короткая версия кода с помощью перечисления
//        case name
//        case password
//    }
    
    @State private var userName = ""
    @FocusState var userNameFocused: Bool
    @State private var userPass = ""
    @FocusState var userPassFocused: Bool
//    @FocusState private var userSingUp: userSingUpData?
    
    var body: some View {
        VStack{
            TextField("Your name", text: $userName)
//                .focused($userSingUp, equals: .name)
                .focused($userNameFocused)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            TextField("Your password", text: $userPass)
//                .focused($userSingUp, equals: .password)
                .focused($userPassFocused)
                .padding(.leading)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                let userNameValid = !userName.isEmpty
                let userPassValid = !userPass.isEmpty
                if userNameValid && userPassValid {
                    showAlert.toggle()
                } else if userNameValid {
//                    userSingUp = .password
                    userPassFocused = true
                } else {
//                    userSingUp = .name
                    userNameFocused = true
                }
            } label: {
                Text("Sing Up")
            }
            .alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in

            }

                
        }
        .padding()
//        .onAppear{
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.userNameFocused = true
//            }
//        }
    }
}

#Preview {
    mySwiftUI_FocusState()
}
