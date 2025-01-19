//
//  mySwiftUIList.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 05.01.2025.
//

import SwiftUI

struct mySwiftUIList: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "Orange", "Peach"]
    @State var veggien: [String] = ["Tomato", "Patato", "Carrot"]
    
    var body: some View {
        NavigationStack {
                List {
                    Section(header:
                            HStack {
                                Text("Fruits")
                                Image(systemName: "flame.fill")      //C помощью этого можно добавить иконку
                            }
                        .foregroundStyle(Color.red) //изменение цвета названия списка
                    ){
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.description.capitalized)
                                .font(.caption)
                                .foregroundStyle(Color.white)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.blue)       Тут мы можем лишь слегка кастомезировать ячейки
                        }
                        .onDelete { IndexSet in
                            deleteItem(IndexSet: IndexSet)      //Тут мы прописываем функцию удаления через отдельную функцию
                        }       //Даже если не прописывать код, удаление все равно будет проходить
                        .onMove { IndexSet, Int in
                            moveItem(IndexSet: IndexSet, Int: Int)      //Он тут принимает индекс и целое число, которое является новым индексом
                        }
                        .listRowBackground(Color.blue)      //Полностью изменяет цвет элементов списка
                    }
                    
                    Section(header: Text("veggien")){
                        ForEach(veggien, id: \.self) { veggien in
                            Text(veggien.description.capitalized)
                        }
                        .onDelete { IndexSet2 in
                            deleteItem2(IndexSet: IndexSet2)      //Тут мы прописываем функцию удаления через отдельную функцию
                        }
                        .onMove { IndexSet, Int in
                            moveItem2(IndexSet: IndexSet, Int: Int)
                        }
                    }
                }
            
                //.listStyle(PlainListStyle())     //Присваеваем стили для списка
            .navigationTitle("My SwiftUI List")
            .toolbar {      //toolbar для добавления кнопок редактирования и добавления в список элементов
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("add") {
                        fruits.append("New")
                        veggien.append("New")
                    }
                }
            }            //.navigationBarItems(trailing: Button("Delete") { deleteItem(IndexSet: $fruits.indices) })
        }
        .tint(Color.red)    //Тут мы поставиль акцентный цвет во на всей странице
       
    }
    //Создав эту функцию мы просто отделяем функцию удаления от основного кода
    func deleteItem(IndexSet: IndexSet) {
        fruits.remove(atOffsets: IndexSet) //Тут мы говорим, что удаление будет проходить только по окончанию работы с массивом и только по тому индексу, по которому пользователь провел пальцем
    }
    
    func moveItem(IndexSet: IndexSet, Int: Int) {
        fruits.move(fromOffsets: IndexSet, toOffset: Int)
    }
    
    func deleteItem2(IndexSet: IndexSet) {
        veggien.remove(atOffsets: IndexSet)
    }
    
    func moveItem2(IndexSet: IndexSet, Int: Int) {
        veggien.move(fromOffsets: IndexSet, toOffset: Int)
    }
}

#Preview {
    mySwiftUIList()
}



