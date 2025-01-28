//
//  mySwiftUINavigationSplitView.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 21.01.2025.
//

import SwiftUI

//MARK: Теория
/*
 NavigationSplitView используется в основном на iPad, MacOS, VisionOS, так как у них большие экраны и отображения этого View будет более корректным
 
 */

struct mySwiftUINavigationSplitView: View {
    
    @State private var visibleColumns: NavigationSplitViewVisibility = .all
    @State private var selection: FoodCategory? = nil
    @State private var fruitsList: Fruits? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibleColumns) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selection) { catalog in
                NavigationLink(catalog.rawValue.capitalized, value: catalog)
            }
            .navigationTitle("Prodects")
        } content: {
            if let selection {
                List(Fruits.allCases, id: \.rawValue, selection: $fruitsList) { fruitCategory in
                    NavigationLink(fruitCategory.rawValue.capitalized, value: fruitCategory)
                }
                    .navigationTitle(selection.rawValue.capitalized)
            }else {
                Text("Select catalogory")
            }
        }detail: {
            if let fruitsList {
                Text ("You select \(fruitsList.rawValue)")
                    .navigationTitle(fruitsList.rawValue.capitalized)
            } else {
                Text("Select product")
            }
                
        }
        .navigationSplitViewStyle(.automatic)
        
//        NavigationSplitView {
//            Color.blue
//        } content: {
//            Color.red
//        } detail: {
//            Color.orange
//        }
        
//        NavigationSplitView {
//            Color.red
//        } detail: {
//            Color.blue
//        }

    }
}

#Preview {
    mySwiftUINavigationSplitView()
}


enum FoodCategory: String, CaseIterable {
    case fruits
    case vegetables
    case meats
}

enum Fruits: String, CaseIterable {
    case apple
    case banana
    case orange
}
