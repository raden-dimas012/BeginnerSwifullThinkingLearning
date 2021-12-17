//
//  BindingBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.pink
    @State var title: String = "My Title"
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            VStack{
                Text(title)
                    .font(.title)
                    .foregroundColor(Color.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
}
    
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.black
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            self.backgroundColor = .yellow
            self.buttonColor = .blue
            self.title = "New Title"
        }, label: {
            Text("Button")
                .font(.headline)
                .padding()
                .padding(.horizontal,20)
                .foregroundColor(.white)
                .background(buttonColor)
                .cornerRadius(10.0)
        })
    }
}
