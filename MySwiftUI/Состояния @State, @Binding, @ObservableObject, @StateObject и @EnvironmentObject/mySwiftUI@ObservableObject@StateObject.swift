//
//  mySwiftUI@ObservableObject@StateObject.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 15.01.2025.
//


/*
 @StateObject этот оператор состояния лучше использовать, если мы первый раз создаем или инициализаируем представление
 
 @ObservedObject этот оператор состояния лучше использовать для дочерних представлений
 
 Из за функции .onAppear у нас будут грузиться одни и теже данные (они будут повторяться) когда будет окрываться экран.
 и что бы такого не было, нужно добать init в класс
 */

import SwiftUI

struct fruitsInfo: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let price: String
}

class MyFruit: ObservableObject {       //Строчкой ObservableObject мы объявляем что этот класс теперь надлюдаемый
    @Published var fruitsArray: [fruitsInfo] = []   //@Published оператор состояния для одной переменной, которая рабоатет вне тела
    @Published var isLoading = false
    
    init() {
        addFruit()
    }
    
    func addFruit() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitsArray.append(fruitsInfo(name: "Banana", price: "200.0"))
            self.fruitsArray.append(fruitsInfo(name: "Peach", price: "100.0"))
            self.fruitsArray.append(fruitsInfo(name: "Watermelon", price: "300.0"))
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index1: IndexSet) {
        fruitsArray.remove(atOffsets: index1)
    }
}

struct mySwiftUI_ObservableObject_StateObject: View {
    
    //@ObservedObject var myFruit = MyFruit()     //Этот тот же оператор состояния что и State, только он используется на целые классы и обновляет весь класс при любом изменении представления, а не на одну переменную
    
    @StateObject var myFruit = MyFruit()    //@StateObject оператор состояния который не дает обновлять целый класс при обновлении представления
    
    var body: some View {
        NavigationView {
            List {
                if myFruit.isLoading {
                    ProgressView()
                }else {
                    ForEach(myFruit.fruitsArray) { fruit in
                        HStack{
                            Text(fruit.name)
                                .font(.headline)
                                .foregroundStyle(Color.primary)
                            Spacer()
                            Text(fruit.price)
                                .foregroundStyle(Color.secondary)
                        }
                    }
                    .onDelete { IndexSet in
                        myFruit.deleteFruit(index1: IndexSet)
                    }
                }
            }
            .navigationTitle(Text("Fruits"))
            .toolbar(content: {
                NavigationLink(destination: ThreedScreen(myFruitAnother: myFruit)) {
                    Text("Add")
                }
            })
            
        }
    }
}

struct ThreedScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var myFruitAnother: MyFruit     //
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                ForEach(myFruitAnother.fruitsArray) { fruit in
                    HStack{
                        Text("\(fruit.name)")
                            .foregroundStyle(.white)
                        Spacer()
                        Text("\(fruit.price)")
                            .foregroundStyle(.white)
                    }
                    .padding()
                }
            }
        }
    }
}


#Preview {
    mySwiftUI_ObservableObject_StateObject()
}
