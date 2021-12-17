//
//  DatePickerBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endDate: Date = Date()
    
    
    var dateFormater: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            
            Text("Selected Date is ")
//            Text(selectedDate.description)
//                .font(.headline)
            Text(dateFormater.string(from: selectedDate))
                .font(.headline)
            
            
            //        DatePicker("Select a date ", selection: $selectedDate)
            //        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date])
                    DatePicker("Select a date", selection: $selectedDate, in: startingDate...endDate,displayedComponents: [.date])
                        .accentColor(Color.red)
                        .datePickerStyle(
                            CompactDatePickerStyle()
            //                GraphicalDatePickerStyle()
            //                WheelDatePickerStyle()
                        )
            
            Spacer()
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
