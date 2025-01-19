//
//  mySwiftUITapGesture.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 15.01.2025.
//

import SwiftUI

//Небольшое отличие между кнопкой и касанием, в том что при нажатии на кнопку происходит анимация нажатия, а у касания ее нет

struct mySwiftUITapGesture: View {
    
    @State var colorButtonTrigger: Bool = false
    @State var colorTapTrigger: Bool = false
    @State var colorTapTrigger2: Bool = false
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40){
                                                        //Обычная кнопка
                VStack {
                    Text("Обычная кнопка")
                        .font(.title)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 200)
                        .foregroundStyle(colorButtonTrigger ? Color.red : Color.green)
                    
                    Button {
                        colorButtonTrigger.toggle()
                    } label: {
                        Text("Button")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(height: 50)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray).opacity(0.2))
                                                //Tap Gestore с одним нажатием
                VStack{
                    Text("Tap Gestore с одним нажатием")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 200)
                        .foregroundStyle(colorTapTrigger ? Color.red : Color.green)
                    
                    Text("Tap Gestore")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .onTapGesture {
                            colorTapTrigger.toggle()
                        }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray).opacity(0.2))
                
                
                                                //Tap Gestore с настраиваемым количеством нажатий
                VStack{
                    Text("Tap Gestore с настраиваемым количеством нажатий")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 200)
                        .foregroundStyle(colorTapTrigger2 ? Color.red : Color.green)
                    
                    Text("Tap Gestore")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .onTapGesture(count: 2) {
                            colorTapTrigger2.toggle()
                        }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray).opacity(0.2))
            }
            .padding(20)
            Spacer()
        }
    }
}

#Preview {
    mySwiftUITapGesture()
}
