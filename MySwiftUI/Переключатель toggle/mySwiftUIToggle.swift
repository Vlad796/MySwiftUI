//
//  mySwiftUIToggle.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 09.01.2025.
//

import SwiftUI

struct mySwiftUIToggle: View {
    
    @State var toggleIsOnAutomatic: Bool = false
    @State var toggleIsOnButton: Bool = false
    @State var toggleIsOnSwitch: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Status")
                Text(!toggleIsOnAutomatic ? "Offline" : "Online")
            }
            Toggle(isOn: $toggleIsOnAutomatic) {
                Text ("Toggle style automatic")
            }
            .toggleStyle(.automatic)
            Spacer()
            
            HStack{
                Text("Platform")
                Image(systemName: !toggleIsOnButton ? "playstation.logo" : "xbox.logo")
                    .font(.largeTitle)
            }
            Toggle(isOn: $toggleIsOnButton) {
                Text ("Toggle style button")
            }
            .toggleStyle(.button)
            Spacer()
            
            HStack{
                Text("Status")
                Image(systemName: !toggleIsOnSwitch ? "lock.display" : "lock.open.display")
                    .font(.largeTitle)
            }
            Toggle(isOn: $toggleIsOnSwitch) {
                Text ("Toggle style switch")
            }
            .toggleStyle(.switch)
            Spacer()
        }
    }
}

#Preview {
    mySwiftUIToggle()
}
