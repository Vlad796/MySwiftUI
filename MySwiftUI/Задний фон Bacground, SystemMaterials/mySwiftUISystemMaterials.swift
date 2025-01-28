//
//  mySwiftUISystemMaterials.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

struct mySwiftUISystemMaterials: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 4)
                    .padding(.top, 15)
                Spacer()
                Text("HI")
                Spacer()
            }
            .frame(height: 300)
            .frame(maxWidth: .infinity)
            //.background(.regularMaterial)   //Стандартная прозрачность
            //.background(.thinMaterial)    //Сильная прозрачность
            //.background(.thickMaterial)     //Слабая прозрачность
            .background(.ultraThinMaterial)     //Очень сильная прозрачность
            //.background(.ultraThickMaterial)    //Очень слабая прозрачность
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(Image("theRock"))
    }
}

#Preview {
    mySwiftUISystemMaterials()
}
