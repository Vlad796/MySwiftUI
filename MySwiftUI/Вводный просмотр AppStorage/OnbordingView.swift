//
//  OnbordingView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 16.01.2025.
//

import SwiftUI

struct OnbordingView: View {
    
    //onbordingState:
    /*
     0 - Приветственная страница
     1 - Добавление имени
     2 - Добавления возраста
     3 - Добавлени пола
     */
    @State var onbordingState = 0
    //Вид переходной анимации в секциях
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading ))
    
    //Переменные для страниц
    @State var name: String = ""
    @State var age: Double = 18
    @State var gender: String = ""
    
    //Переменная для блокировки кнопки
    @State var buttonIsEnabled = false
    
    //Переменные предупреждения
    @State var titelAlert = "Введите имя"
    @State var messageAlert = "Ваше имя должно содержать не менее трех символов"
    @State var showAlert = false
    
    //Переменные с модификатором AppStorage
    @AppStorage("name") var userName: String?      //Был задан неопределенный тип данных, потому что не известно, задал ли пользователь эти данных
    @AppStorage("age") var userAge: Int?
    @AppStorage("gender") var userGender: String?
    @AppStorage("signed_in") var userSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //Контент страницы
            switch onbordingState {
            case 0:
                welcomSection
                    .transition(transition)
            case 1:
                 addNameSection
                    .transition(transition)
            case 2:
                addAgeSection
                    .transition(transition)
            case 3:
                addGenderSection
                    .transition(transition)
            default:
                Text("It's not working")    //Запись default будет рабоать только если диапозон case будет привышать 3
                    .font(.headline)
                    .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                    .underline()
            }
            
            //Кнопки страницы
            VStack {
                Spacer()
                bottomButton
            }
            .padding()
        }
        .alert(titelAlert, isPresented: $showAlert, presenting: showAlert) { showAlert in
        } message: { showAlert in
            Text(messageAlert)
        }
    }
}

#Preview {
    OnbordingView()
        .background(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
}

//MARK: Компоненты для основного представления
    //extension - это расширение для представлений. В него можно вносить то что мы хотим вынести из основного тела, для более красивовго кода
extension OnbordingView {       // После extension нужно писать название представления к которому нужно его присвоить
    private var bottomButton : some View {
        //Этот текст является динамичный, потому что было добавлена вариация надписи кнопкиа
        Text(onbordingState == 0 ? "Sing Up" : onbordingState == 3 ? "Finish" : "Next")
            .foregroundStyle(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
            .font(.headline)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                switchButton()
            }
    }
    
    private var welcomSection: some View {
        VStack(spacing: 20){
            Spacer()
            Image("myLogoRed")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text("Welcome to MyApp")
                .font(.headline)
                .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                .underline()
            Text("This is a demo app, for practicing @AppStorage and oter SwiftUI technologies")
                .font(.subheadline)
                .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
        }
        .padding()
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20){
            Spacer()
            Text("How your name?")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                
            TextField("Add your name", text: $name)
                .padding()
                .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding()
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20){
            Spacer()
            Text("Choose an age")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
            Text(String(format: "%.0f", age))
                .font(.title)
                .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                
            Slider(value: $age, in: 18...100, step: 1)
                .tint(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
            Spacer()
            Spacer()
        }
        .padding()
    }
    
     private var addGenderSection: some View {
        VStack(spacing: 10){
            Spacer()
            Text("Choose your gender")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
            
            Menu(content: {
                Button {
                    gender = "Male"
                } label: {
                    Text("Male")
                }
                Button {
                    gender = "Female"
                } label: {
                    Text("Female")
                }
                Button {
                    gender = "Non-Binary"
                } label: {
                    Text("Non-Binary")
                }
            }, label: {
                Text("Your gender: \(gender)")
            })
            
            .foregroundStyle(Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)))
            .font(.headline)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 30)
            
            Spacer()
            Spacer()
        }
        .padding()
    }
    
}

//MARK: ФУНКЦИИ
extension OnbordingView {
    func switchButton() {
        
        //Блокировка кнопки дальше после ввода имени
            switch onbordingState {
            case 1:
                guard name.count >= 3 else {
                    showAlert.toggle()
                    return
                }
            default:
                break
        }
        
        //Переход на след страницы
        if onbordingState == 3 {
            singIn()
        }else {
            withAnimation(.spring()){
                onbordingState += 1     //Функция для пролистывая секций
            }
        }
    }
    
    func singIn() {
        userName = name
        userAge = Int(age)
        userGender = gender
        withAnimation(.spring()) {
            userSignedIn = true
        }
    }
}
