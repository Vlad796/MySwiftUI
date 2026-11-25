//
//  mySwiftUITextSelection.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

//Модификатор TextSelection позволяет с лугкостью выделять текст и копировать его

struct mySwiftUITextSelection: View {
    var body: some View {
        Text("Hello, World! This is a sample text")
            .textSelection(.enabled)
    }
}

#Preview {
    mySwiftUITextSelection()
}
