//
//  mySwiftUIAsyncImage.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 19.01.2025.
//

import SwiftUI

struct mySwiftUIAsyncImage: View {
    
    let url = URL(string: "https://img.freepik.com/premium-photo/glossy-iridescent-heart-shape_53876-321288.jpg?w=1060")
    
    var body: some View {
        
        //Обычное добавление картинки по ссылке
//        AsyncImage(url: url)
//            .frame(width: 200,height: 200)
        
        //Добавление картинки по ссылке и настройке его размеров и что будет показываться во время загрузки
        AsyncImage(url: url) { Image in
            Image
                .resizable()
                .frame(width: 300, height:  300)
        } placeholder: {
            ProgressView()
        }
        
        //Полный контроль URL картинки с выводом ошибки и прогрессом загрузки
//        AsyncImage(url: URL(string: "https://img.freepik.com/premium-photo/glossy-iridescent-heart-shape_53876-321288.jpg?w=1060")) { phase in
//            if let image = phase.image {
//                image // Displays the loaded image.
//            } else if phase.error != nil {
//                Color.red // Indicates an error.
//            } else {
//                Color.blue // Acts as a placeholder.
//            }
//        }
    }
}

#Preview {
    mySwiftUIAsyncImage()
}
