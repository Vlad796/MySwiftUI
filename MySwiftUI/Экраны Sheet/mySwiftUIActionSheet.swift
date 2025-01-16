//
//  mySwiftUIActionSheet.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 08.01.2025.
//

import SwiftUI

struct mySwiftUIActionSheet: View {
    @State var backgroundColor: Color = .green
    @State var showActionSheet = false
    @State var titleActionSheet: String = "Что ты думаешь по этому поводу?"
    @State var itemsActionSheet: ActionSheetItem = .isOtherPost
    
    enum ActionSheetItem {
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            VStack{
                HStack{
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("@userName")
                    Spacer()
                    Button {
                        itemsActionSheet = .isOtherPost
                        showActionSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .tint(.black)
                }
                .padding(.horizontal)
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
            }
            
//            Button {
//                showActionSheet.toggle()
//            } label: {
//                Text("Ну привет, сладкий!😘")
//                    .foregroundStyle(.white)
//            }
            .confirmationDialog(titleActionSheet, isPresented: $showActionSheet) {
                switch itemsActionSheet {
                case .isMyPost:
                    Button("Удалить", role: .destructive) {
                        backgroundColor = .red
                    }
                    Button("Отмена", role: .cancel) {
                        backgroundColor = .yellow
                    }
                case .isOtherPost:
                    Button {
                        backgroundColor = .blue
                    } label: {
                        Text("Поделиться")
                    }
                    Button {
                        backgroundColor = .purple
                    } label: {
                        Text("Пожаловаться")
                    }
                    Button("Отмена", role: .cancel) {
                        backgroundColor = .yellow
                    }
                }
//                Button("Ты мне не нужна, дорогуша!", role: .destructive) {
//                    backgroundColor = .red        //Можно использовать как и эту кнопку с ролью если хочется сделать кнопку удаления, так и обычную кнопку
//                }
//                Button {
//                    backgroundColor = .blue
//                } label: {
//                    Text("Поделиться")
//                }
//
//                Button("ОТМЕНА!!!🆘", role: .cancel) {
//                    backgroundColor = .yellow
//                }
            }
        }
    }
}

#Preview {
    mySwiftUIActionSheet()
}
