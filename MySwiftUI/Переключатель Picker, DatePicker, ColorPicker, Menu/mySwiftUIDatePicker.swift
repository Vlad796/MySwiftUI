//
//  mySwiftUIDatePicker.swift
//  MySwiftUI
//
//  Created by Влад Варламов on 09.01.2025.
//

import SwiftUI

struct mySwiftUIDatePicker: View {
    
    @State var datePicker: Date = Date()
    
    let dateRange: ClosedRange<Date> = {    //С помощью этой константы мы создаем диапазон
        let calendar = Calendar.current
        let startigDate = DateComponents(year: 2021, month: 1, day: 1)  //С помощью функции DateComponents мы можем задать конкретные начало диапазона
        let endingDate = DateComponents(year: 2025, month: 12, day: 31)
        return calendar.date(from:startigDate)!
            ...
            calendar.date(from:endingDate)!
    }()
    //Переменная для редактирования отображаемой даты в тексте
    var formattedDate: DateFormatter {
        let formatted = DateFormatter()
        formatted.dateStyle = .medium
        formatted.timeStyle = .short
        return formatted
    }
    
    var body: some View {
        VStack{
            Text("Selected date is: \(formattedDate.string(from: datePicker))")
            
            //Пример заполнения обычного DatePicker и виды стилей отображения DatePicker
            DatePicker("Select a date", selection: $datePicker)
                .tint(Color.red)
                .padding()
                .datePickerStyle(CompactDatePickerStyle())    //Стандартный DatePicker
                //.datePickerStyle(DefaultDatePickerStyle())      //Стандартный DatePicker
                //.datePickerStyle(WheelDatePickerStyle())      //DatePicker в виде колеса
                //.datePickerStyle(GraphicalDatePickerStyle())    //DatePicker в виде календаря
            
            //DatePicker c настройкой отображения либо даты, либо времени по отдельности
            DatePicker("Select a date", selection: $datePicker, displayedComponents: [.date]/*[.hourAndMinute] Для отображения времени*/)
                .tint(Color.red)
                .padding()
                .datePickerStyle(CompactDatePickerStyle())
            
            //DatePicker с диапазоном дат
            DatePicker("Select a date", selection: $datePicker, in: dateRange, displayedComponents: [.date])
                .tint(Color.red)
                .padding()
                .datePickerStyle(CompactDatePickerStyle())
        }
    }
}

#Preview {
    mySwiftUIDatePicker()
}
