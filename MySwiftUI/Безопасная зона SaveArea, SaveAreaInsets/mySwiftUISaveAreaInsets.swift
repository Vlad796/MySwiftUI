//
//  mySwiftUISaveAreaInsets.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

struct mySwiftUISaveAreaInsets: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 200)
            }
            .navigationTitle(Text("SaveAreaInsets"))
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.ignoresSafeArea(edges: [.bottom]))
//                    .clipShape(Circle())
            }
            
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    mySwiftUISaveAreaInsets()
}
