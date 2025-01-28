//
//  mySwiftUI@ObservableMacro.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 22.01.2025.
//

import SwiftUI

//MARK: Теория
/*
 @Observable Macro - используется с iOS 17 и выше!!!
 Он является тем же ObservableObject, только он незначительно увеличивает производительность приложения
 
 Можно исплоьзовать @ObservationIgnored для игнорирования обновляющихся данных  
 */

@Observable class ObservableMacroModel{ //Теперь нужно присваивать значения состояния класса с именем
    
    var text: String = "Some text"  //Теперь нет необходимости прописывать состояние @Published
    
}

struct mySwiftUI_ObservableMacro: View {
    
    @State var viewModel = ObservableMacroModel()   //Можно теперь прописывать не StateObject, а просто State
    
    var body: some View {
        VStack{
            Button {
                viewModel.text = "Some button text"
            } label: {
                Text(viewModel.text)
            }
            buttonChenge(viewModel2: $viewModel)
            buttonChengeLust()
        }
        .environment(viewModel)
    }
}

struct buttonChenge: View {
    
    @Binding var viewModel2: ObservableMacroModel       //Теперь можно использовать вместо состояния ObservedObject, привязку Binding
    
    var body: some View {
        Button {
            viewModel2.text = "Some button text 2"
        } label: {
            Text(viewModel2.text)
        }

    }
}


struct buttonChengeLust: View {
    
    @Environment(ObservableMacroModel.self) var viewModel3
    
    var body: some View {
        Button {
            viewModel3.text = "Some lust button text 3"
        } label: {
            Text(viewModel3.text)
        }

    }
}

#Preview {
    mySwiftUI_ObservableMacro()
}
