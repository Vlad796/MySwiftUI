//
//  mySwiftUIListSwipeActions.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

/*
 Раньше можно было использовать только одну функцию при смахивании объекта списка.
 Сейчас же можно использовать свои кастомные кнопки при смахивании
 */

struct mySwiftUIListSwipeActions: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Peach"]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.arrow.down")
                        }
                        .tint(.green)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "archivebox")
                        }
                        .tint(.blue)
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "trash")
                        }
                        .tint(.gray)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.left.fill")
                        }
                        .tint(.yellow)
                        
                    }
            }
            
        }
    }
}

#Preview {
    mySwiftUIListSwipeActions()
}
