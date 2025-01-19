//
//  mySwiftUI@State.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 28.12.2024.
//

import SwiftUI

//@State используется для того, что бы компилятор понимал, что эта переменная должна будет изменяться

struct mySwiftUI_State: View {
    
    @State var backgroundColor: Color = .blue      //Этой переменной мы задаем значение @State, мы говорим предстваленияю следить за переменной, так как она может в дальнейшем измениться
    @State var myTitel = "My Color"
    @State var Count = 0
    
    var body: some View {
        ZStack{
            //  Background
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text(myTitel)
                    .font(.largeTitle)
                Text("Count: \(Count)")
                    .font(.title2)
                
                HStack(spacing: 30){
                    Button("Background Green") {
                        backgroundColor = .green
                        myTitel = "My Color: Red"
                        Count += 1
                           
                    }
                    Button("Background Red") {
                        backgroundColor = .red
                        myTitel = "My Color: Green"
                        Count -= 1
                        
                    }
                    Button("Fuck. Go back") {
                        backgroundColor = .blue
                        myTitel = "Fuck. Go back"
                        Count = 0
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    mySwiftUI_State()
}
