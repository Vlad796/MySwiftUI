//
//  mySwiftUIAlerts.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 07.01.2025.
//

import SwiftUI

struct mySwiftUIAlerts: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .green
    //Эти две переменные используются для того что бы мы могли задавать определенный текст в уведомлении
    @State var titelAlert: String = ""      //Тут прописывается заголовок ошибки
    @State var messageAlert: String = ""
    //@State var myAlert: alertVariant? = nil
      
    //Есть возможность задать станартные варианты уведомлений. То есть будут показываться только эти уведомления
//    enum alertVariant {
//        case success
//        case error
//    }
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack{
                Button {
                    titelAlert = "Успешно 🤯"
                    messageAlert = "Загрузка произошла успешно"
                    showAlert.toggle()
                } label: {
                    Text("Получилось загрузить")
                        .foregroundStyle(Color.white)
                }
                Button {
                    titelAlert = "Ошибка"
                    messageAlert = "Не получилось загрузить"
                    showAlert.toggle()
                } label: {
                    Text("Не получилось загрузить")
                        .foregroundStyle(Color.white)
                }
            }
            
                                                //Тут прописывается уведомление c изменяемым текстом уведомления
            .alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in

            } message: { showAlert in
                Text(messageAlert)
            }

                                                    //Кнопка для вывода уведомления о удалении элемента
//            .alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in
//                //Тут прописывается название кнопки или функционал кнопок, которые будут в оповещении. МОЖНО И НЕ ПРОПИСЫВАТЬ ТУТ НИЧЕГО
//                Button("Delete", role: .destructive) {
//                    backgroundColor = .red
//                }
//            } message: { showAlert in
//                //Тут прописывается развернутое сообщение для ошибки. МОЖНО И НЕ ПРОПИСЫВАТЬ ТУТ НИЧЕГО
//                Text("у тебя шибка Брооо")
//            }
            
            
        //Для того что бы задать определенные значения текста уведомления, нам нужно прописать switch и уже в нем прописывать определенные значения текста
//            switch myAlert {
//            case success:
//
//            }
            
        }
    }
}

#Preview {
    mySwiftUIAlerts()
}
