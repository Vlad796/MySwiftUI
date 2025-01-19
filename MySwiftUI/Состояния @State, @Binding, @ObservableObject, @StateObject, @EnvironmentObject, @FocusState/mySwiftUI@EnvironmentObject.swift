//
//  mySwiftUI@EnvironmentObject.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 15.01.2025.
//

/*
 EnvironmentObject выставляет представление для всех дополнительных страницу в приложении.
 Поэтому не нужно составлять переводы данных представления через каждую страницу,
 ведь можно обратиться сразу к корневому представлению
 */

import SwiftUI

// MARK: Class
class MyEnvironmentObjectModel: ObservableObject {
    @Published var envirArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.envirArray.append(contentsOf: ["iPod", "iPhone", "iPad", "MacBook"])
    }
}

// MARK: mySwiftUI_EnvironmentObject
struct mySwiftUI_EnvironmentObject: View {
    
    @StateObject var viewModel = MyEnvironmentObjectModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.envirArray, id: \.self) { apple in
                    NavigationLink {
                        detailView(selectItem: apple)
                    } label: {
                        Text(apple)
                    }

                   
                }
            }
            .navigationTitle("Apple Products")
        }
        .environmentObject(viewModel)   //Теперь все вложенные представления могут иметь доступ к этой модели представления
    }
}

// MARK: detailView
struct detailView: View {
    
    let selectItem: String
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1))
                .ignoresSafeArea()
            VStack{
                NavigationLink {
                    lustView()
                } label: {
                    Image(systemName: "apple.logo")
                        .font(.largeTitle)
                        .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                    Text(selectItem)
                        .font(.largeTitle)
                        .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                }
            }
        }
    }
}

// MARK: lustView
struct lustView: View {
    
    @EnvironmentObject var lustViewModel: MyEnvironmentObjectModel      //При добавлении этой строки, нужно понимать что в окружении должна быть MyEnvironmentObjectModel
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6470588235, green: 0, blue: 0.06666666667, alpha: 1)), Color(#colorLiteral(red: 0.6470588235, green: 0.1568627451, blue: 0.1725490196, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            HStack{
                Image(systemName: "apple.logo")
                    .font(.system(size: 90))
                    .shadow(color: Color.black.opacity(0.3), radius: 10)
                    .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                VStack{
                    ForEach(lustViewModel.envirArray, id: \.self) { apple in
                        Text(apple)
                            .font(.headline)
                            .foregroundStyle(Color(#colorLiteral(red: 0.8941176471, green: 0.8941176471, blue: 0.8862745098, alpha: 1)))
                    }
                }
            }
        }
    }
}
#Preview {
    mySwiftUI_EnvironmentObject()
    //detailView(selectItem: "iPod")
    //lustView()
}
