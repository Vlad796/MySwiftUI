//
//  mySwiftUIContextMenu.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 08.01.2025.
//

import SwiftUI

struct mySwiftUIContextMenu: View {
    @State var backgroundColor: Color = Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: "apple.logo")
                .font(.largeTitle)
            Text("Apple")
                .font(.headline)
            Text("Apple it's future!")
                .font(.subheadline)
        }
        .padding()
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .contextMenu {
            Button {
                backgroundColor = Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1))
            } label: {
                Label("Like", systemImage: "heart")
            }
            
            Button {
                backgroundColor = Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1))
            } label: {
                Label("Share", systemImage: "arrowshape.turn.up.right")
            }
            
            Button {
                backgroundColor = Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
            } label: {
                Label("Report", systemImage: "exclamationmark.bubble")
            }
        }
    }
}

#Preview {
    mySwiftUIContextMenu()
}
