//
//  mySwiftUISlider.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 10.01.2025.
//

import SwiftUI

struct mySwiftUISlider: View {
    
    @State var sliderValue: Double = 0
    @State var sliderValueIn: Double = 0
    @State var sliderValueStep: Double = 0
    @State var sliderValueFull: Double = 0
    
    var body: some View {
        VStack{
            Text("Slider Value: \(sliderValue)")
            Slider(value: $sliderValue)   //Обычный Slider который не настраиввается
                .tint(Color.blue)
                .padding()
            
            Text("Slider Value: \(sliderValueIn)")
            Slider(value: $sliderValueIn, in: 0...100)    //Slider с диапазоном
                .tint(Color.green)
                .padding()
            
            Text("Slider Value:")
            Text(
                String(format: "%.2f", sliderValueStep)    //%.2f обозначает что нужно оставить 2 знака после запятой
            )      //Для того что бы отобразить значения sliderValueStep короче, нужно использовать ф-цию format
            Slider(value: $sliderValueStep, in: 0...100, step: 0.5)     //Slider с настраиваемым шагом. Теперь будет меняться только целое число, а десятичные будут равны 0
                .tint(Color.red)
                .padding()
            
            Text("Slider Value:")
            Text(
                String(format: "%.0f", sliderValueFull)
            )
            Slider(value: $sliderValueFull,     //Slider с полной настройкой
                   in: 0...100,
                   step: 0.5,
                   label: {
                        Text("LabelText")
                    }, minimumValueLabel: {
                        Text("1")
                    }, maximumValueLabel: {
                        Text("100")
                    })
                .tint(Color.red)
                .padding()
        }
    }
}

#Preview {
    mySwiftUISlider()
}
