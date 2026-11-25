//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 17.12.2024.
//

import SwiftUI

struct ContentView: View {  //всегда используется для создания экрана. «Создаю структуру с именем ContentView, которая соответствует протоколу View»
    
    var body: some View {   //Всё, что соответствует View, обязано иметь body. Это описание интерфейса — то, что видит пользователь
        
        VStack {    //Это стэк и он определяет как будут располагаться элементы на экране.
            Image(systemName: "globe")  //Это Элемент который используется на экране
            
                //Это модификаторы элементов. Они позволяют настраивать и кастомезировать элементы на экране
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, world!")
        }
        .padding()  //Это отступы от края рамки элемента
    }
}

//Это превью экрана, которое выводится в Convas
#Preview {
    ContentView()
}
