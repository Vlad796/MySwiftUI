//
//  mySwiftUIResizableSheets.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 20.01.2025.
//

import SwiftUI

struct mySwiftUIResizableSheets: View {
    
    @State private var showSheet = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("New sheeld")
        }
        .sheet(isPresented: $showSheet) {
            mySecondSheetView(detents: $detents)
               // .presentationDetents([.medium, .large])     //Модификатор, который позволяет регулировать открытие Sheet
                //.presentationDetents([.fraction(0.75)])     //Процентное перекрытие экрана
                //.presentationDetents([.height(300)])      //Устанавливает размер окна по пикселям
                //.presentationDragIndicator(.hidden)     //Скрывает индикатор перемещения
                //.interactiveDismissDisabled(true)       //Не позволяет закрыть всплывающее окно
//                .presentationDetents([.large, .medium], selection: $detents)
        }

    }
}

struct mySecondSheetView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        VStack(spacing: 20){
            Text("Hi!")
            //Возможно добавть только тот отступ, который есть в .presentationDetents
            Button {
                detents = .large
            } label: {
                Text("Button large")
            }
            
            Button {
                detents = .fraction(0.2)
            } label: {
                Text("Button 20$")
            }
            
            Button {
                detents = .height(300)
            } label: {
                Text("Button 300 PX")
            }
            
            Button {
                detents = .medium
            } label: {
                Text("Button medium")
            }
        }
        .presentationDetents([.large, .medium, .fraction(0.2), .height(300)], selection: $detents)
    }
}

#Preview {
    mySwiftUIResizableSheets()
}
