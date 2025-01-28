//
//  mySwiftUIMenu.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

struct mySwiftUIMenu: View {
    var body: some View {
        Menu {
            Button {
                
            } label: {
                Text("Like")
            }
            Button {
                
            } label: {
                Text("Share")
            }
            Button {
                
            } label: {
                Text("Trash")
            }

        } label: {
            Text("Check menu")
        }

    }
}

#Preview {
    mySwiftUIMenu()
}
