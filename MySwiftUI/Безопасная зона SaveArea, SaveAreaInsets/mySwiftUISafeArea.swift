//
//  mySwiftUISafeArea.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 26.12.2024.
//

import SwiftUI

//безопасная зона SafeArea у каждого устройства apple свое. Весь контент, который мы добавляем во View, распологается в безопасной зоне по умолчанию. Если мы сейчас добавим максимальный фрейм нашему стартовому тексту, то он будет находиться в пределах безопасной зоны. Безопасная зона работает, хоть и закрашивается весь  экран

struct mySwiftUISafeArea: View {
    var body: some View {
        ScrollView {
            Text("Titely text")
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 200)
                    .shadow(radius: 10)
                    .padding()
            }
        }
        .background(Color(#colorLiteral(red: 0, green: 0.8638225198, blue: 0.7798178792, alpha: 1)))
        
        
    }
}

#Preview {
    mySwiftUISafeArea()
}
