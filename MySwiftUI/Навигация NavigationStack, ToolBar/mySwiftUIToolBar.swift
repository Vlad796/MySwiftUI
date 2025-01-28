//
//  mySwiftUIToolBar.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

struct mySwiftUIToolBar: View {
    
    @State var text = ""
    @State private var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path){
            ZStack{
                Color.indigo.ignoresSafeArea()
                ScrollView {
                    TextField("Press me", text: $text)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                        .cornerRadius(10)
                    
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 300, height: 200)
                    }
                }
               
            }
            .navigationTitle(Text("ToolBar"))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .principal) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "gear")
                        .background(Color.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar) //Задает цвет navigationBar
            //.navigationBarTitleDisplayMode(.inline)     //Для того что бы всегда было видно toolbarTitleMenu
            .toolbarTitleMenu {
                Button {
                    path.append("Screen 1")
                } label: {
                    Text("Screen 1")
                }
                
                Button {
                    path.append("Screen 2")
                } label: {
                    Text("Screen 2")
                }
            }
            //.toolbarBackground(.hidden, for: .navigationBar)    //Отключается видимое размытие navigationBar
            .navigationDestination(for: String.self) { newValue in      //Указатель пути для path
                Text("New screen \(newValue)")
            }
        }
    }
}

#Preview {
    mySwiftUIToolBar()
}
