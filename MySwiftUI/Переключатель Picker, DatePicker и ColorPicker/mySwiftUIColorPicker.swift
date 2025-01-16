//
//  mySwiftUIColorPicker.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 09.01.2025.
//

import SwiftUI

struct mySwiftUIColorPicker: View {
    
    @State var colorPicker: Color = .blue
    
    var body: some View {
        ZStack{
            colorPicker
                .ignoresSafeArea()
            ColorPicker("Color picker", selection: $colorPicker, supportsOpacity: true)
                .padding(10)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.white)
                .padding(50)
        }
    }
}

#Preview {
    mySwiftUIColorPicker()
}
