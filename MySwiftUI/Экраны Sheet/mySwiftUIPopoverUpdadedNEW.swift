//
//  mySwiftUIPopoverUpdaded.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

struct mySwiftUIPopoverUpdaded: View {
    
    @State private var showPopover: Bool = false
    @State private var feedback = [
        "I love you too ❤️",
        "Let's go to the beach 🏖️",
        "I'll be waiting for you 🕒"
    ]
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1))
                .ignoresSafeArea()
            
            Button {
                showPopover.toggle()
            } label: {
                Text("You, my love ❤️")
                    .font(.headline)
                    .foregroundStyle(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
                    .padding(20)
                    .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            //Краткая версия popover
//            .popover(isPresented: $showPopover) {       //popover прикрепляется к тому объекту, за которым он закреплен
//                Text("You, my love ❤️")
//                    .presentationCompactAdaptation(.popover)    //Модификатор, помогает настроить в каком представлении должно вылезать сообщение
//            }
            
            //Расширенная версия popover
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                VStack(alignment: .center, spacing: 10){
                    ForEach(feedback, id: \.self) { option in
                        Button {
                            
                        } label: {
                            Text(option)
                        }
                        
                        if option != feedback.last! {
                            Divider()
                        }
                    }
                }
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
            })
        }
    }
}

#Preview {
    mySwiftUIPopoverUpdaded()
}
