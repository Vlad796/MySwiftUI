//
//  mySwiftUIForEach.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 22.12.2024.
//

import SwiftUI

struct mySwiftUIForEach: View {
    // ForEach - это цикл. Мы можем в него закинуть фигуры, предварительно назначив количество циклов
    let data: [String] = ["Привет", "Привет, родной", "Привет всем"]
    
    var body: some View {
        ForEach(data.indices) { index in
            Text ("\(data[index]) - \(index)")
        }
        
        ForEach(0..<10) { index in  //Цикл для вывода фигуры и вывода ее индекса. (0..<10) - это обозначает сколько раз цикл повторится
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("- \(index)")
            }
        }
    }
}

#Preview {
    mySwiftUIForEach()
}
