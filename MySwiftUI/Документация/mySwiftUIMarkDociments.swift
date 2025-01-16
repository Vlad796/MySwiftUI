//
//  mySwiftUIMarkDociments.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 11.01.2025.
//

import SwiftUI

struct mySwiftUIMarkDociments: View {
    // MARK: ПЕРЕМЕННЫЕ
    @State var fruitsData: [String] = ["Apples", "Bananas", "Oranges"]
    @State var showAlert: Bool = false
    
    // MARK: ТЕЛО
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Fruits")
                    .font(.title)
                    .bold()
                ForEach(fruitsData, id: \.self) { fruit in
                    Text(fruit)
                        .font(.headline)
                }
            }
            .navigationTitle(Text("Products"))
            .toolbar{
                Button {
                    showAlert.toggle()
                } label: {
                    Text("Alert")
                }

            }
            .alert("Alert", isPresented: $showAlert) {
                
            } message: {
                Text("Big message")
            }
        }
    }
}

#Preview {
    mySwiftUIMarkDociments()
}
