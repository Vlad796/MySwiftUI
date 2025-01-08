//
//  mySwiftUIStaks.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.12.2024.
//

import SwiftUI

struct mySwiftUIStaks: View {
    //VStack - Вертикальные
    //HStack - Горизонтальные
    //ZStack - изменяет расположение объекта по троектории Z (с переднего фона на задний)
    var body: some View {
        //VStack - объекты располагаются друг под другом, так как они находятся в VStack, в котором расположение объектов происходит по вертикали. Что бы настроить VStack по растоянию и центрирования, то нужно будет выбрать вариант настраиваемого VStack. Выравнивание по стеку - идет в пределах раски стека(она равна размеру большой фигуры)
        VStack(alignment: .leading, spacing: 50) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 25, height: 25)
        }
        
        //HStack - объекты расположены слева на право, так как они находятся в HStack, в котором расположение происходит по горизонтали. Что бы настроить HStack по растоянию и центрирования, то нужно будет выбрать вариант настраиваемого HStack. Выравнивание по стеку - идет в пределах рамки стека(она равна размеру большой фигуры)
        HStack(alignment: .top, spacing: 50) {
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.brown)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.gray)
                .frame(width: 25, height: 25)
        }
        
        //ZStack - объекты расположены друг на друге, так как они находятся в ZStack, в котором расположение происходит наложением. И если объекты будут одинакового размера, то ничего не видно, а если поменять размеры объектов, то там уже можно будет увидеть из расположение. У ZStack нету отступов, так как они расположены друг над другом, но выравнивание происходит так же по рамке Стека которая равна размеру большей фигуры. Для Очень многослойных объектов лучше использовать ZStack, а для объектов в котором будут использоваться 2-3 слоя можно использовать Background
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 25, height: 25)
        }
    }
}

#Preview {
    mySwiftUIStaks()
}
