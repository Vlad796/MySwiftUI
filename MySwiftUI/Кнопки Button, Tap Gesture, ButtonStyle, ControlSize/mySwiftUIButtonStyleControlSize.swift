//
//  mySwiftUIButtonStyleControlSize.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

struct mySwiftUIButtonStyleControlSize: View {
    var body: some View {
        ScrollView {
            VStack{
                //MARK: Button style
                VStack{
                    Text("Button style")
                        .font(.largeTitle)
                        .bold()
                    Button {
                        
                    } label: {
                        Text("Button style borderless")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderless)
                    
                    Button {
                        
                    } label: {
                        Text("Button style borderedProminent")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    
                    Button {
                        
                    } label: {
                        Text("Button style bordered")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.bordered)
                    
                    Button {
                        
                    } label: {
                        Text("Button style plain")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.plain)
                }
                Spacer()
                //MARK: Control size
                //Он добавляется к рамке внутри кнопки
                VStack{
                    Text("Control size")
                        .font(.largeTitle)
                        .bold()
                    
                    Button {
                        
                    } label: {
                        Text("Control size extraLarge")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .controlSize(.extraLarge)
                    .buttonStyle(.bordered)
                    
                    Button {
                        
                    } label: {
                        Text("Control size large")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .controlSize(.large)
                    .buttonStyle(.bordered)
                    
                    Button {
                        
                    } label: {
                        Text("Control size mini")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .controlSize(.mini)
                    .buttonStyle(.bordered)
                    
                    Button {
                        
                    } label: {
                        Text("Control size regular")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .controlSize(.regular)
                    .buttonStyle(.bordered)
                    
                    Button {
                        
                    } label: {
                        Text("Control size small")
                    }
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .controlSize(.small)
                    .buttonStyle(.bordered)
                    
                    
                    //MARK: Button border shape
                    VStack{
                        Text("Button border shape")
                            .font(.largeTitle)
                            .bold()
                        
                        Button {
                            
                        } label: {
                            Text("Button border shape capsule")
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                        }
                        .controlSize(.small)
                        .buttonBorderShape(.capsule)
                        .buttonStyle(.bordered)
                        
                        Button {
                            
                        } label: {
                            Text("Button border shape circle")
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                        }
                        .controlSize(.small)
                        .buttonBorderShape(.circle)
                        .buttonStyle(.bordered)
                        
                        Button {
                            
                        } label: {
                            Text("Button border shape roundedRectangle")
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                        }
                        .controlSize(.small)
                        .buttonBorderShape(.roundedRectangle)
                        .buttonStyle(.bordered)
                        
                        Button {
                            
                        } label: {
                            Text("Button border shape roundedRectangle(radius)")
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                        }
                        .controlSize(.small)
                        .buttonBorderShape(.roundedRectangle(radius: 20))
                        .buttonStyle(.bordered)
                    }
                    
                    //MARK: Пример того что controlSize и buttonStyle связан с размером текста
                    VStack{
                        Text("Пример того что controlSize и buttonStyle связан с размером текста")
                            .font(.largeTitle)
                            .bold()
                        Button {
                            
                        } label: {
                            Text("Пример того что controlSize и buttonStyle связан с размером текста")
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                        }
                        
                        .controlSize(.large)
                        .buttonStyle(.bordered)
                    }
                }
            }
            .padding(20)
        }
        
    }
}

#Preview {
    mySwiftUIButtonStyleControlSize()
}
