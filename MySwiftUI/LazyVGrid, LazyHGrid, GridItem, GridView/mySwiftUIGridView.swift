//
//  mySwiftUIGridView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.01.2025.
//

import SwiftUI

struct mySwiftUIGridView: View {
    var body: some View {
        
        //MARK: Хороший пример использования Сетки
        Grid{
            GridRow {
                Color.blue.opacity(0.5)
                    .gridCellColumns(4)
            }
            
            GridRow {
                Color.red.opacity(0.5)
                Color.yellow.opacity(0.5)
                    .gridCellColumns(2)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                Color.yellow.opacity(0.5)
                Color.blue.opacity(0.5)
            }
            GridRow {
                Color.blue.opacity(0.5)
                    .gridCellColumns(2)
                Color.green.opacity(0.5)
                Color.gray.opacity(0.5)
            }
        }
        
        
        //MARK: Пример всех возможностей использования сетки
//        Grid(alignment: .center, horizontalSpacing: 10, verticalSpacing: 10){   //Растояние между элементами сетки и выравнивание всей сетки
//            ForEach(0..<5) { rowIndex in
//                GridRow(alignment: .bottom) {       //У каждой строки сетки есть свое выравнивание по той или иной стороне  (ВЫРАВНИЕ СТРОК СЕТКИ)
//                    ForEach(0..<5) { columnsIndex in
//                        let index = (rowIndex * 5) + (columnsIndex + 1)
//                        
//                        if index == 8 {
//                            EmptyView()     //Если будет использование EmptyView, то это значит отсутствие ячейки в принципе и заполнение ее место сосоедней
////                            Color.clear
////                                .gridCellUnsizedAxes([.horizontal, .vertical])      //Если нужно будет именно свободное место в сетке, то лучше использовать это
//                        } else{
//                            self.cellRow(row: index)
//                                .gridCellColumns(index == 7 ? 2 : 1)
//                                .gridCellAnchor(.leading)       //(ВЫРАВНИВАНИЕ ОПРЕДЕЛЕННОЙ ЯЧЕЙКИ СЕТКИ)
//                                .gridColumnAlignment(       //Выравнивание сторон сетки по краям (ВЫРАВНИЕ КОЛОН СЕТКИ)
//                                    index == 1 ? .trailing :
//                                        index == 5 ? .leading  :
//                                            .center
//                                )
//                        }
//                    }
//                }
//            }
////            Divider()
////                .gridCellUnsizedAxes(.horizontal)       //Говорит что разделителю нельзя выходить за пределы сетки
//        }
        
        
        
    }
    
    private func cellRow(row: Int) -> some View {
        Text("\(row)")
            .frame(height: row == 13 ? 12 : 22)
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .background(Color.red)
    }
    
}

#Preview {
    mySwiftUIGridView()
}
