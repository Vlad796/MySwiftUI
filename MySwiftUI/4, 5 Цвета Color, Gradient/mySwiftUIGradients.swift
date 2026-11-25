//
//  mySwiftUIGradients.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 18.12.2024.
//

import SwiftUI

struct mySwiftUIGradients: View {
    var body: some View {
        
        //Стандартный градиент который предлагает swiftUI
        RoundedRectangle(cornerRadius: 25)
            .fill(
                Gradient(colors: [Color.blue, Color.red])
            )
            .frame(width: 300   , height: 200)
        
        
//------------------------------------------------------------------------------------------------------------------
        
        
        //В этом случае мы можем настраивать не только цвет, но и сторону фигуры где будет начинаться(startPoint) и заканчиваться(endPoint) градиент, а так же и количество цветов которые мы будем использовать. И этот градиент идет от одной стороны к другой
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(colors: [Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 300   , height: 200)
        
        
//------------------------------------------------------------------------------------------------------------------
        
        
        //Этот градиент идет от маленького круга к большому. И этот градиент настраивается так же как и предыдущий
        RoundedRectangle(cornerRadius: 25)
            .fill(
                RadialGradient(colors: [Color.red, Color.blue], center: .center, startRadius: 40, endRadius: 270)
            )
            .frame(width: 300   , height: 200)
        
        
//------------------------------------------------------------------------------------------------------------------
        
        
        //Этот градиент работает с углом поворота (от центра к тому краю, к которому мы укажем)
        RoundedRectangle(cornerRadius: 25)
            .fill(
                AngularGradient(colors: [Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))], center: .center, angle: .degrees(180 + 45))
            )
            .frame(width: 300   , height: 200)
    }
}

#Preview {
    mySwiftUIGradients()
}
