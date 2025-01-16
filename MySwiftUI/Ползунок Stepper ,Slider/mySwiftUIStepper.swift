//
//  mySwiftUIStepper.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 10.01.2025.
//

import SwiftUI

struct mySwiftUIStepper: View {
    
    @State var stepperValue: Int = 10   //Мы задаем это число, для того что бы задать начальное значение Stepper. Сейчас отсчет будет начинаться с 10
    @State var widthStepper: Double = 0
    
    var body: some View {
        //Text("Stepper Value: \(stepperValue)")
        VStack{
            Stepper("Stepper \(stepperValue)", value: $stepperValue)
                .padding(30)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 100 + widthStepper, height: 100)  //тут мы добавили к ширине прибавление значения widthStepper
            Stepper("Stepper 2") {
                //Увеличение
                widthStepperAnim(amount: 10)        //Тут мы задали на сколько будет увеличиваться ширина
            } onDecrement: {
                //Уменьшение
                widthStepperAnim(amount: -10)       //Тут мы задали на сколько будет уменьшаться ширина
            }
        }
    }
    func widthStepperAnim(amount: Double) {
        withAnimation(.easeInOut){
            widthStepper += amount
        }
    }
}

#Preview {
    mySwiftUIStepper()
}
