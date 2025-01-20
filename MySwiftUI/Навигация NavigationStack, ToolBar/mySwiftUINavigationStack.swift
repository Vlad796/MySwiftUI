//
//  mySwiftUINavigationStack.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

/*
 NavigationStack позвляет уменьшать загрузку приложения. С его помощью можно загрузать только те ссылки, которые были открыты в процессе
 
 .navigationDestination - Связывает представление назначения с представленным типом данных для использования в стеке навигации.
 
 .navigationDestination(for: Int.self) { valueDest in
     mySecondScreenNavStack(valueInit: valueDest)
 }
 for: Int.self - тут задается пункт назначения для типа данных с протоколом Hashаble,
                    а все стандартные типы данных уже соответствуют протаколу Hashаble
 
 valueDest - тут мы задаем название для целого числа, которое было задано в пред. действии
 
 mySecondScreenNavStack(valueInit: valueDest) - и тут мы переходим на следующий экран с тем значеним которое мы выбрали
 
 Этот NavigationLink не является ленивой, так как загружает все ссылки сразу
                        NavigationLink {
                            mySecondScreenNavStack(valueInit: x)
                        } label: {
                            Text("Click me \(x)")
                        }
 */
struct mySwiftUINavigationStack: View {
    
    let fruit = ["Apple", "Banana", "Orange", "Grape", "Pineapple"]
    @State private var fruitsArray: [String] = []        //Если сразу добавить значения в массив, то сначала будут открываться они
    
    var body: some View {
        //Тем что бал задан конкретный путь NavigationStack по строковым значениям, теперь нет возможности открывать числовые значени.
        //Но плюсом пути в NavigationStack, является то что есть возможность добавлять дополнительные значения
        NavigationStack(path: $fruitsArray){
                VStack(spacing: 20){
                    Button {
                        fruitsArray.append(contentsOf: ["Watrmelon", "Strawberry", "Wildberry"])
                    } label: {
                        Text("Add new fruit")
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me \(x)")
                        }
                    }
                    
                    ForEach(fruit, id: \.self) { fruitDest in
                        NavigationLink(value: fruitDest) {
                            Text (fruitDest)
                        }
                    }
                }
            .navigationTitle(Text("NavigationStack"))
            //Для Click me \(x)
            .navigationDestination(for: Int.self) { valueDest in
                mySecondScreenNavStack(valueInit: valueDest)
            }
            //Для fruitDest
            .navigationDestination(for: String.self) { fruitDestArr in
               Text("Screen for fruits \(fruitDestArr)")
            }
        }
    }
}

struct mySecondScreenNavStack: View {
    
    let value: Int
    init(valueInit: Int) {
        self.value = valueInit
        print("init \(valueInit)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}
#Preview {
    mySwiftUINavigationStack()
}
