//
//  PickerBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct PickerBootcamp: View {
    
//    @State var selection: String = "1"
    
    @State var selection: String = "Most Recent"
    
    let filterOptions: [String] = [
    "Most Recent","Most Popular","Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        
        
        VStack {
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(filterOptions.indices) { index in
                        Text(filterOptions[index])
                            .tag(filterOptions[index])
                        
                    }
            })
                .pickerStyle(SegmentedPickerStyle())
//                .background(Color.red)
            
             
            Spacer()
        }
        
        
//        Picker(
//            selection: .constant(1),
//            label:
//                HStack {
//                    Text("Filter: ")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10.0)
//                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0.0, y: 0.0)
//
//            ,
//
//            content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    Text(option)
//                        .tag(option)
//
//                }
//        })
//            .pickerStyle(MenuPickerStyle())
        
        
//        VStack {
//
//            HStack {
//                Text("Age: ")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                Text("1").tag("1")
//                Text("2").tag("2")
//                Text("3").tag("3")
//                Text("4").tag("4")
//                Text("5").tag("5")
//                Text("6").tag("6")
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(Color.red)
//                            .tag("\(number)")
//
//                    }
//            })
//                .pickerStyle(WheelPickerStyle())
//                .background(Color.gray.opacity(0.3))
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
