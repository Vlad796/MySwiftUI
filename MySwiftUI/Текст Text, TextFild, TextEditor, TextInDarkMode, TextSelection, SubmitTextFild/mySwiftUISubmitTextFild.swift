//
//  mySwiftUISubmitTextFild.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

//Оператор Submit позволяет задавать кнопке "Return" на клавиатуре какое-то действие

struct mySwiftUISubmitTextFild: View {
    
    @State var titelAlert = "Work in progress🤯"
    @State var showAlert = false
    
    @State var text = ""
    
    var body: some View {
        VStack{
            TextField("Some kind of text...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .submitLabel(.go)
                .onSubmit {
                    showAlert.toggle()
                }.alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in
                    
                }
            
            TextField("Some kind of text...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .submitLabel(.search)
                .onSubmit {
                    showAlert.toggle()
                }.alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in
                    
                }
            
            TextField("Some kind of text...", text: $text)
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .submitLabel(.continue)
                .onSubmit {
                    showAlert.toggle()
                }.alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in
                    
                }
        }
        .padding()
    }
}

#Preview {
    mySwiftUISubmitTextFild()
}
