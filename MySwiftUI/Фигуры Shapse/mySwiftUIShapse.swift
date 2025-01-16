//
//  mySwiftUIShapse.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 17.12.2024.
//

import SwiftUI

struct mySwiftUIShapse: View {
    var body: some View {
        Circle()
        //Заливка фигуры
            //.fill(Color.red)//для стандартных фигур в SwiftUI можно использовать ещё .foregroundColor(Color.blue)
            //.stroke(Color.blue, lineWidth: 5)//Тут мы задаем размер и цвет обводки
        //Стилизация фигуры.
            //.stroke(Color.gray, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [19]))// lineWidth - это размер/жирность, lineCap - это тип разметки контура(короткие тире, закругленные тиру и длинные тире), dash - это массив который используется для выявления растояния между тире
        //Обрезание определенной части фигуры
            .trim(from: 0.3, to: 1.0) //Стандартное значение from: 0.0, to: 1.0 показывает целую фигуру
            //Для более красивого оформления, мы можем использовать контуринг фигуры
            .stroke(Color.gray, lineWidth: 10)
            .frame(width: 50, height: 50)//Ну и через фрейм мы можем уменьшить размеры фигуры
        
        Ellipse()//Для элипса мы можем использовать все теже модификаторы
            .stroke(Color.red, lineWidth: 10)
            .frame(width: 50, height: 100)
        
        Capsule(style: .continuous)//Разница стилей капсулы в том, что continuous с более закругленными углами, а circular с более резкими. Это сало заметно
            .stroke(Color.gray, lineWidth: 10)
            .frame(width: 50, height: 100)
        
        Rectangle()//Обычный прямоугольний
            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 10)//Прямоугольник со скошенными углами. Очень нужная фигура для стилизации экрана
            .stroke(Color.gray, lineWidth: 10)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    mySwiftUIShapse()
}
