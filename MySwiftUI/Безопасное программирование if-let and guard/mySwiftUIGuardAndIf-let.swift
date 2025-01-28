//
//  mySwiftUIGuardAndIf-let.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 11.01.2025.
//

import SwiftUI

/*
 if-let and guard Позволяет проверять переменные на наличие определенного значения
 Если значение не равно nil то код будет выполняться
 */

struct mySwiftUIGuardAndIf_let: View {
    
    @State var userDataID: String? = "TestUser123"    //Проверка ID пользователя
    @State var textIfLet: String? = nil
    @State var loading: Bool = false    //Индикатор загрузки
    
    var body: some View {
        NavigationView {
            VStack{
                Text ("This is guard and if-let")
                if let nameIfLet = textIfLet {
                    Text (nameIfLet)
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
                
//                Text (textIfLet!) Приложение не скомпелируеся, так как нет проверки на nil
//                    .font(.title)
                
                if loading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Guard and if-let")
            .onAppear{
                loadData2()
            }
        }
    }
    func loadData(){
        if let userID = userDataID {
            loading = true          //Эта часть кода выполняться не будет, если userDataID будет равен nil
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                textIfLet = "Text for guard and if-let. User ID: \(userID)"
                loading = false
            }
        } else {
            textIfLet = "Erorr!The user's ID is missing"
        }
       
    }
    
    func loadData2() {
        //guard работает как и оператор if let, только сначала выполняется else, и если userDataID не nil то выполняпется основной код
        guard let userID = userDataID else {
            textIfLet = "Erorr!The user's ID is missing (loadData2)"
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            textIfLet = "Text for guard and if-let (loadData2). User ID: \(userID)"
            loading = false
        }
    }
}

#Preview {
    mySwiftUIGuardAndIf_let()
}
