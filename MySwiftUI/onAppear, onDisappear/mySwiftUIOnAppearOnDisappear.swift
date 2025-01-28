//
//  mySwiftUIOnAppearOnDisappear.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 11.01.2025.
//

import SwiftUI

struct mySwiftUIOnAppearOnDisappear: View {
    
    @State var myText = "Start Text"
    @State var count = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3/*Задержка на 3 сек*/) {   //Эта функция позволяет задержать загрузку элемента
                    
                    myText = "Appeared Text"        //onAppear работает при условии того к какому элементу он относится. И если этот элемент прогружается, то функция начинает работать
                    
                }
            }
            .onDisappear {
                myText = "Disappeared Text"     //Будет не затмено как работает эта функция, потому что она вызывается только тогда, когда вид исчезает с экрана. Обычно это искользуется для завершения не используемых функция
            }
            .navigationTitle("OnAppear: \(count)")
        }
    }
}

#Preview {
    mySwiftUIOnAppearOnDisappear()
}
