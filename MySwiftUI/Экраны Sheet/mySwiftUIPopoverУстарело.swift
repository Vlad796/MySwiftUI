//
//  mySwiftUIPopover.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 03.01.2025.
//

import SwiftUI

//Всплывающее окно в SwiftUI

//Вспомним как работать с переключением между страницами

struct mySwiftUIPopover: View {
    
    @State var showSheetPopover: Bool = false
    
    var body: some View {
        ZStack{
            Color.black
                .opacity(0.8)
                .ignoresSafeArea(.all)
            VStack{
                Button {
                    showSheetPopover.toggle()
                } label: {
                    Text("Открыть новую страницу")
                        .foregroundStyle(Color.black)
                        .padding(10)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Spacer()
                
//                //Метод с использованием Sheet
//                    .sheet(isPresented: $showSheetPopover) {
//                        showSheetPopoverView()
//                    }
                
                //Метод с использованием Transitions        НЕ РАБОТАЕТ КОРРЕКТНО
//                    if showSheetPopover {
//                        showSheetPopoverView(showSheetPopoverFromView: $showSheetPopover)
//                            .padding(.top)
//                            .transition(.move(edge: .bottom))
//                            .animation(.bouncy, value: showSheetPopover)
//                    }
                
                //Метод с использованием Animation Offsets
                showSheetPopoverView(showSheetPopoverFromView: $showSheetPopover)
                    .padding(.top)
                    .offset(y: showSheetPopover ? 0 : UIScreen.main.bounds.height)
                    .animation(.spring, value: showSheetPopover)
            }
        }
    }
}

                                                        //ВТОРОЙ ЭКРАН
struct showSheetPopoverView: View {
    
    //@Environment(\.dismiss) var dismiss       - Этот способ подходит для метода Sheet
    
    @Binding var showSheetPopoverFromView: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.black
                .opacity(0.6)
                .ignoresSafeArea(.all)
            VStack{
                Button {
                    //dismiss()       - Этот способ подходит для метода Sheet
                    showSheetPopoverFromView.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .padding(20)
                }

            }
        }
    }
}

#Preview {
    mySwiftUIPopover()
    
}
