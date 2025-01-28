//
//  mySwiftUIViewThatFits.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.01.2025.
//

import SwiftUI

//MARK: Теория
/*
 ViewThatFits - Позволяет отображать элементы в зависимости от того, как они помещаются в той или иной области
 (Вид, который адаптируется к доступному пространству, предоставляя первый подходящий дочерний вид.)
 
 Можно выбрать по какой оси будет происходить ограничего .vertical/.horisontal
 
 */

struct mySwiftUIViewThatFits: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1))
                .ignoresSafeArea()
            
            ViewThatFits(in: .horizontal){       //Этот вид выбирает тот текст, который подходит под размеры области
//                Text("This is text for your mind. I hope it will help you. Good luck!")
//                Text("This is text for your mind. I hope it will help you")
//                Text("This is text for your mind")
                VStack{
                    Text("Press one of the buttons and you will get the result.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .padding(.bottom)
                    HStack{
                        Button {
                            
                        } label: {
                            Text("Button 1")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        } label: {
                            Text("Button 2")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        } label: {
                            Text("Button 3")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        } label: {
                            Text("Button 4")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
                
                VStack{
                    Text("Press one of the buttons and you will get the result.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .padding(.bottom)
                    
                    HStack{
                        Button {
                            
                        } label: {
                            Text("Button 1")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        } label: {
                            Text("Button 2")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        } label: {
                            Text("Button 3")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        
                    }
                    
                }
                .padding()
                
                VStack{
                    Text("Press one of the buttons and you will get the result.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .padding(.bottom)
                    
                    HStack{
                        Button {
                            
                        } label: {
                            Text("Button 1")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        } label: {
                            Text("Button 2")
                        }
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                    }
                    
                    
                }
                .padding()
                
            }
            
//            VStack{
//                Text("Press one of the buttons and you will get the result.")
//                    .multilineTextAlignment(.center)
//                    .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
//                    .padding(.bottom)
//                
//                Button {
//                    
//                } label: {
//                    Text("Button 1")
//                }
//                .padding()
//                .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                Button {
//                    
//                } label: {
//                    Text("Button 2")
//                }
//                .padding()
//                .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                Button {
//                    
//                } label: {
//                    Text("Button 3")
//                }
//                .padding()
//                .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                Button {
//                    
//                } label: {
//                    Text("Button 4")
//                }
//                .padding()
//                .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//
//            }
            
//            Text("This is text for your mind. I hope it will help you. Good luck!")     //Сейчас текст написан в 2 строки
//                .lineLimit(1)   //С помощью этого модификатора, текст ограничился одной строкой
//                .padding()
        }
        .frame(height: 300, alignment: .center)
        .padding(20)
        .foregroundStyle(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
        .font(.headline)
    }
}

#Preview {
    mySwiftUIViewThatFits()
}
