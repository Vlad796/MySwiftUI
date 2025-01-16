//
//  mySwiftUIConditionalStatements.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 29.12.2024.
//

import SwiftUI

//Условные операторы

//Знак "!" означает отрицательное значение false

struct mySwiftUIConditionalStatements: View {
    
    @State var showTheRock: Bool = false
    @State var showTheCow: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Text("Do you like the Rock?")
            Button("Yes: \(showTheRock.description)") {
                showTheRock.toggle() //Функция .toggle() используется для переключения между состояниями true и false
            }
            
            Button("No: \(showTheCow.description)") {
                showTheCow.toggle()
            }
            
//            if showTheRock {
//                Image("theRock")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 200, height: 200)
//                    .clipShape(Circle())
//            } else  if showTheCow{  //Почему когда обе кнопки true не показывается обе картинки? Это потому что при выполнии код не воспринимает ту часть с else  if, потому что она просто до него не доходит!
//                Image("theCow")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 200, height: 200)
//                    .clipShape(Circle())
            
            //А если мы разместим два этих условных оператора отдельно друг от друга, то они будут считываться по отдельности, никак не связанно друг с другом
            if showTheRock {
                Image("theRock")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
            }
            if showTheCow{
                Image("theCow")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
            }
            if showTheRock && showTheCow{ //Если showTheRock И showTheCow являются true то покажется прямойгольник с закругр=ленными краями. Знаки || означают ИЛИ
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 200)
            }
            
            //Так же пример из реальной жизни!
            Button("Is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }//Если загрузка завершена, то мы можем написать else и вписать туда то что мы хотим вывести на экрана
                
        }
    }
}

#Preview {
    mySwiftUIConditionalStatements()
}
