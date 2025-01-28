//
//  mySwiftUIAnimationUpdated.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

struct mySwiftUIAnimationUpdated: View {
    
    @State private var toggleBut: Bool = false
    @State private var toggleBut2: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    Button {
                        toggleBut.toggle()
                    } label: {
                        Text("Toggle 1")
                    }
                    .padding(.bottom)
                    Button {
                        toggleBut2.toggle()
                    } label: {
                        Text("Toggle 2")
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 100, height: 100)
                            .frame(maxWidth: .infinity, alignment: toggleBut ? .leading : .trailing)
                            .background(Color.green)
                            .frame(maxHeight: .infinity, alignment: toggleBut2 ? .bottom : .top)
                            .background(Color.orange)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                }
                .animation(.bouncy, value: toggleBut)
                .animation(.bouncy, value: toggleBut2)
            }
        }
    }
}

#Preview {
    mySwiftUIAnimationUpdated()
}
