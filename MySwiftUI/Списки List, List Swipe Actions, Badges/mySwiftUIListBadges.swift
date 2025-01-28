//
//  mySwiftUIBadges.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

struct mySwiftUIListBadges: View {
    var body: some View {
        List{
            Text("iPhone")
                .badge(10)
            Text("iPod")
            Text("iMac")
            Text("MacBook")
                .badge("New")
        }
    }
}

#Preview {
    mySwiftUIListBadges()
}
