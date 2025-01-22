//
//  mySwiftUILazyVGridLazyHGridGridItems.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 24.12.2024.
//

import SwiftUI

//LazyVGrid можно хорошо испльзовать для размещения элементов на экране с разными размерами

struct mySwiftUILazyVGridLazyHGridGridItems: View {
    let columnsLet: [GridItem] = [
//        GridItem(.flexible(), spacing: 10),   //.fixed - один из модификаторов для настройки элемента в сетке
                                                //.adaptive(в котором нужно настраивать максимум и минимум) Не понимаю зачем
                                                //.flexible(в котором нужно настраивать максимум и минимум) Если не указать этот мин и макс, то ячейка будет растягиваться под размер всего экрана
        
//        GridItem(.fixed(50), spacing: 10),  // Добавление дополнительных GridItem позволяет добавлять еще одни колонки в сетке
//        GridItem(.fixed(100), spacing: 10),

        GridItem(.flexible(), spacing: 7),
        GridItem(.flexible(), spacing: 7),
        GridItem(.flexible(), spacing: 7)
    ]
    var body: some View {
        //Тут мы можем сделать небольшое подобие профиля инсты если добавим прмяоугольник
        //А если добавим хедер, то получится некий список дел
       
        ScrollView {
            Image("MyLogo")
                .shadow(radius: 10, x: 0, y: 15)
            LazyVGrid(columns: columnsLet,
                      alignment: .center,
                      spacing: 7,
                      pinnedViews: [.sectionHeaders]   //Тут мы можем закрепить заголовки разделов(верхней части View) - sectionHeaders или футер - sectionFooters
            ) { //LazyVGrid c расширенными настройками
                Section(header:
                            Text("Продукты")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color(#colorLiteral(red: 0, green: 0.8638225198, blue: 0.7798178792, alpha: 1)))
                                .padding(.leading)
                                .background(Color(#colorLiteral(red: 0, green: 0.8638225198, blue: 0.7798178792, alpha: 1)))
                                .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 150)
                            
                    }
                }
                Section(header:
                            Text("Игрушки")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color(#colorLiteral(red: 0, green: 0.8638225198, blue: 0.7798178792, alpha: 1)))
                                .padding(.leading)
                                .background(Color(#colorLiteral(red: 0, green: 0.8638225198, blue: 0.7798178792, alpha: 1)))
                                .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(height: 150)
                    }
                }
                
//            LazyVGrid(columns: columnsLet/*Cюда мы вписываем название массива в котором мы будем прписывать количество столбцов*/) {
//                ForEach(0..<20) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
        }
        
        }
        .background(Color(#colorLiteral(red: 0, green: 0.8638225198, blue: 0.7798178792, alpha: 1)))
    }
}

#Preview {
    mySwiftUILazyVGridLazyHGridGridItems()
}
