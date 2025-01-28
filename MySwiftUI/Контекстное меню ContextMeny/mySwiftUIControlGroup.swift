//
//  mySwiftUIControlGroup.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 22.01.2025.
//

import SwiftUI

struct mySwiftUIControlGroup: View {
    var body: some View {
        Menu("Press me") {
            ControlGroup("Counts") {
                Button {
                    
                } label: {
                    Text("1")
                }
                
                Button {
                    
                } label: {
                    Text("2")
                }
                
                Menu("Whats up") {
                    Button {
                        
                    } label: {
                        Text("Good")
                    }
                    Button {
                        
                    } label: {
                        Text("Not good")
                    }
                }
            }
            Button {
                
            } label: {
                Text("one")
            }
            
            Button {
                
            } label: {
                Text("two")
            }
            
            Menu("Whats up") {
                Button {
                    
                } label: {
                    Text("Good")
                }
                Button {
                    
                } label: {
                    Text("Not good")
                }
            }
        }
    }
}

#Preview {
    mySwiftUIControlGroup()
}
