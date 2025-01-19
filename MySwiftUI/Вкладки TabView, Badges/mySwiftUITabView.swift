//
//  mySwiftUITabView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 10.01.2025.
//

import SwiftUI

struct mySwiftUITabView: View {
    
    @State var selectedTab: Int = 0
    @State var icons: [String] = ["playstation.logo", "xbox.logo", "flag.pattern.checkered.2.crossed", "gamecontroller.fill"]
    var body: some View {
//        TabView{
//            ForEach(icons, id: \.self) { icon in
//                Image(systemName: icon)
//                    .resizable()
//                    .scaledToFit()
//                    .padding()
//            }
//        }
//        .background(
//            RadialGradient(colors: [Color.blue, Color.red], center: .center, startRadius: 40, endRadius: 270)
//        )
//        .frame(height: 300)
//        .tabViewStyle(.page)
        
        
        TabView(selection: $selectedTab) {
            Tab(value: 0) {
                HomeView(selectedTab: $selectedTab)
            } label: {
                Image(systemName: "house.fill")
                Text("Home")
            }
            Tab(value: 1) {
                Text("PlayStationPage")
            } label: {
                Image(systemName: "playstation.logo")
                Text("PlayStation")
            }
            
            Tab(value: 2) {
                Text("PROFILE TAB")
            } label: {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .tint(.red)
    }
}

struct HomeView: View {
    @Binding var selectedTab : Int
    var body: some View {
            VStack{
                Text("HomePage")
                Button {
                    selectedTab = 1
                } label: {
                    Text("Переход")
                }

            }
    }
}

#Preview {
    mySwiftUITabView()
}
