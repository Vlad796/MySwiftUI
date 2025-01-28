//
//  mySwiftUIAnyLayout.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.01.2025.
//

import SwiftUI
//MARK: Теория
/*
 AnyLayout - Экземпляр протокола компоновки со стертым типом.
 
 AnyLayout Помогает автоматически распределять элементы в зависимости от расположения экрана 
 
 @Environment(\.horizontalSizeClass) - Просто для понимания свободного пространства по горозонтали на экране
 @Environment(\.verticalSizeClass) - Просто для понимания свободного пространства по вертикали на экране
 */

//MARK: Основной код
struct mySwiftUIAnyLayout: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 15){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("iPhone")
                Text("iPod")
                Text("MacBook")
            }
        }
    }
}

#Preview {
    mySwiftUIAnyLayout()
}
