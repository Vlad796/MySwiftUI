//
//  mySwiftUITextFild.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 08.01.2025.
//

import SwiftUI

struct mySwiftUITextFildTextEditor: View {
    
    @State var textTextFild = ""
    @State var textTextEditor = ""
    // (1) Для сохранения текста вписанного в TextField и TextEditor, необходимо создать пустой массив, в который мы будем сохранять все вписанные данные
    @State var dataTextFild: [String] = []
    @State var dataTextEditor: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                TextField("Type your name...", text: $textTextFild)
                //.textFieldStyle(RoundedBorderTextFieldStyle())    //Этот модификатор позволяет сделать текстовое поле с тонкой серой рамкой
                    .padding(10)
                    .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                    .cornerRadius(10)
                //.foregroundStyle(Color.red)   //Задаем цвет печатаемого текста в текстовом поле
                    .font(.headline)
                Text("Write something about yourself")
                    .font(.headline)
                    
                TextEditor(text: $textTextEditor)
                    .frame(height: 250)
                    .colorMultiply(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                Button {
                    if isApropiateText() {
                        saveChanges()   // (4) Это последнее что нам нужно сделать для того чтобы заработало сохранение!
                    }
                } label: {
                    Text("Save")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(isApropiateText() ? Color.blue : Color.gray)        //Тут мы меняем текст в зависимости от значения isApropiateText()
                        .cornerRadius(10)
                        .foregroundStyle(Color.white)
                        .font(.headline)
                }
                .disabled(!isApropiateText())   //Тут отключается активность кнопки если количество символов меньше 5
                Spacer()
                
                // (3?)  Этот цикл нужен что бы отобразить сохраненный текст
                Text("Your name:")
                ForEach(dataTextFild, id: \.self) { data in
                    Text(data)
                        .font(.subheadline)
                }
                //Тут будет отображаться текст из TextEditor
                Text("Your massege:")
                ForEach(dataTextEditor, id: \.self) { data in
                    Text(data)
                        .font(.subheadline)
                }
            }
            .padding()
            .navigationTitle(Text("My SwiftUI TextFild"))
        }
    }
    //Это мы делаем для того что бы обозначить определенное колличество букв в TextFild и TextEditor
    func isApropiateText() -> Bool {
        if textTextFild.count >= 1 || textTextEditor.count >= 3{
            return true
        }else {
            return false
        }
    }
    
    
    // (2) После создания массива, нам необходимо создать функция, что бы сязать массивы с textTextFild и с textTextEditor, чтобы добавлять текст в массив
    func saveChanges() {
        //Для TextFild
        dataTextFild.append(textTextFild)
        textTextFild = ""   //Эта строка нужна для того что бы очищать TextFild
        //Для TextEditor
        dataTextEditor.append(textTextEditor)
    }
}

#Preview {
    mySwiftUITextFildTextEditor()
}
