//
//  ToggleBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    @State var backgroundColor: Color = Color.white
    
    var body: some View {
    
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                HStack {
                    Text("Status")
                    Text(toggleIsOn ? "DarkMode" : "WhiteMode")
                }
        
                Toggle(
                    isOn: darkMode(),
                    label: {
                    Text("Change Status")
                })
                .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))))
                
                Spacer()
            }
            .padding(.horizontal,20)
        }
    }
    
    func darkMode() -> Binding<Bool> {
    
        return $toggleIsOn
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
