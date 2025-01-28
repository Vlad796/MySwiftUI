//
//  mySwiftUIEnumsAndInits  .swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.12.2024.
//

import SwiftUI
/*
 Мы можем использовать переменные или константы обсалютно для всех модификаторов, текстовых полей и т.д.
 */
struct mySwiftUIEnumsAndInits: View {
    
    let backgroundColor: Color//Например, если мы будем задавть цвет не конкретно в этой переменной, а в Preview, то этот цвет будет действовать абсолютно во всей структуре mySwiftUIEnumsAndInits
    let count: Int
    let title: String   //Тут происходит автоматическая инициализация кода, которая нас отправляет в Preview и мы там указываем значения
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        //Bспользуем условие с элементами списка. Перед этим на стоит изменить условие init в фрагменте titel
        if fruit == .apples {
            title = "Apples"
            backgroundColor = Color.red
        }else {
            title = "Oranges"
            backgroundColor = Color.orange
        }
    
//        if title == "Apples"{
//            self.backgroundColor = Color.red
//        } else {
//            self.backgroundColor = Color.blue
//        }
    }//Тут происхоит то что мы делали ранее, только с прописанным кодом. Но тут мы уже можем задавать условия для выполнения
    
    enum Fruit {
            case apples
            case oranges
        }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .underline(color: Color.white)
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)//Если у нас есть значение, которое мы будем использовать на протяжении всей разработки, то мы можем создать отдельную переменную вне body, что бы не прописывать одно и тоже каждый раз, а просто использовать одну переменную
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        mySwiftUIEnumsAndInits(count: 10, fruit: .apples)
        mySwiftUIEnumsAndInits(count: 5, fruit: .oranges)
    }//Тут происходит инициализация данных. И для полного понимания что тут есть разные усливия мы добавим инициализатов в стопку
}
