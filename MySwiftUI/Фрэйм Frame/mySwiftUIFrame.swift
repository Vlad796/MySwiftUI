//
//  mySwiftUIFrame.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 18.12.2024.
//

import SwiftUI

struct mySwiftUIFrame: View {
    var body: some View {
        //ПРИМЕР КАК МОЖНО РАСПОЛОЖИТЬ ФРЕЙМЫ И ЭЛЕМЕНТЫ В НИХ
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.blue)
            .frame(width: 200, alignment: .trailing)
            .background(Color.green)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.yellow)
            .frame(height: 400, alignment: .bottom)
            .background(Color.purple)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.orange)
        //ПРИМЕР КАК МОЖНО РАСПОЛОЖИТЬ ФРЕЙМЫ И ЭЛЕМЕНТЫ В НИХ
    }
}

#Preview {
    mySwiftUIFrame()
}
