//
//  mySwiftUIContentUnavailableView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 22.01.2025.
//

import SwiftUI

//MARK: Обычная страница недоступности той или ино страници

struct mySwiftUIContentUnavailableView: View {
    var body: some View {
        
        ContentUnavailableView.search
//        ContentUnavailableView("No Internet conection", systemImage: "wifi.slash", description: Text("Please check your internet conection"))
    }
}

#Preview {
    mySwiftUIContentUnavailableView()
}
