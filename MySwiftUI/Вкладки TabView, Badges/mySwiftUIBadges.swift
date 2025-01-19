//
//  mySwiftUIBadges.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

//Badges можно использовать как в списках, так и во вкладках

struct mySwiftUIBadges: View {
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Tab(value: 0) {
                Text("PlayStationPage")
            } label: {
                Image(systemName: "playstation.logo")
                Text("PlayStation")
            }
            .badge(2)
            
            Tab(value: 0) {
                Text("PlayStationPage2")
            } label: {
                Image(systemName: "playstation.logo")
                Text("PlayStation")
            }
            .badge("NEW")
            
            Tab(value: 0) {
                Text("PlayStationPage3")
            } label: {
                Image(systemName: "playstation.logo")
                Text("PlayStation")
            }
            .badge(0)
            
        }
        .background(Color.green)
    }
}

#Preview {
    mySwiftUIBadges()
}
