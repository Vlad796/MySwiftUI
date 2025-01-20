//
//  mySwiftUIPicker.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 09.01.2025.
//

import SwiftUI

struct mySwiftUIPicker: View {
   // @State var textPicker: String = "Age"
    @State var selecPicker = "New"
    @State var dataPicker = [ "New", "Moust popular", "Recomend"]
    var body: some View {
//        Picker("Picker", selection: $selecPicker) {
//            ForEach(dataPicker, id: \.self) { dataPick in
//                Text(dataPick)
//            }
//        }
//        .pickerStyle(SegmentedPickerStyle())

        HStack {
            Text("Filter")
            Picker("Picker", selection: $selecPicker) {
                ForEach(dataPicker, id: \.self) { dataPick in
                    Text(dataPick)
                }
            }
        }

//        Text("Age: \(selecPicker)")
//        Picker("Picker", selection: $selecPicker) {
//            ForEach(10..<100, id: \.self) { numPicker in
//                Text("\(numPicker)")
//                    .foregroundStyle(Color.blue)
//                    .tag("\(numPicker)")    //Для того что бы показывалось выбранное число в строке Age:
//            }
//        }
//        .pickerStyle(WheelPickerStyle())
//        //.pickerStyle(InlinePickerStyle())
//        .background(Color(#colorLiteral(red: 0.9740096927, green: 0.9740096927, blue: 0.9740096927, alpha: 1)))
    }
}

#Preview {
    mySwiftUIPicker()
}
