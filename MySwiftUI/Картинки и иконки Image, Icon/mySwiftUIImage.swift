//
//  mySwiftUIImage.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 18.12.2024.
//

import SwiftUI

struct mySwiftUIImage: View {
    var body: some View {
        Image("apple")
            //.renderingMode(.template)   //Можно сделать этот модицикатор автоматическим перейдя в Assets и поменять настройку Render As на Template Image. Это пригодится что бы каждый раз не прописывать для этой картинки этот модификатор
            .resizable()
            .scaledToFit()    //что бы картинка полность поменятилась в фрейм
            //.scaledToFill()     //что бы заполнить полность весь фрейм
            .frame(width: 300, height: 200)
            .foregroundColor(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))    //Тут мы пытаемся изменить цвет картинки, но без применения модификатор .renderingMode(.template\Тут мы задаем ему это значения превращая его в шаблонное изображени/) ничего не произойдет. это работает только с PNG картинками. Если будет не PNG, то картинка полностью/ поменят свой цвет
            
        Image("theRock")
            .resizable()
            //.scaledToFit()    //что бы картинка полность поменятилась в фрейм
            .scaledToFill()     //что бы заполнить полность весь фрейм
            .frame(width: 250, height: 150)
            .clipped()  //используется для обрезания тех частей изображения, которые выходят за пределы фрейма
        
        Image("theRock")
            .resizable()
            //.scaledToFit()    //что бы картинка полность поменятилась в фрейм
            .scaledToFill()     //что бы заполнить полность весь фрейм
            .frame(width: 250, height: 150)
            .clipped()
            .cornerRadius(150)  //можно использовать для закругления изображения. Желательно что бы стороны фрейма были одинаковыми
        
        Image("theRock")
            .resizable()
            //.scaledToFit()    //что бы картинка полность поменятилась в фрейм
            .scaledToFill()     //что бы заполнить полность весь фрейм
            .frame(width: 300, height: 200)
            .clipped()
            .clipShape(
                Circle()
                //RoundedRectangle(cornerRadius: 120)   //прямоугольник со скошенными углами
                //Ellipse()
            )    //позволяет обрузать изображения в форме выбранной фигуры
    }
}

#Preview {
    mySwiftUIImage()
}
