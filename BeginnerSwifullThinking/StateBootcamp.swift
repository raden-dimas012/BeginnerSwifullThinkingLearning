//
//  StateBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
           backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("Count : \(count)")
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        self.backgroundColor = .blue
                        self.myTitle = "Button 1 was pressed"
                        self.count += 1
                    }
                    
                    Button("Button 2") {
                        self.backgroundColor = .red
                        self.myTitle = "Button 2 was pressed"
                        self.count += 1
                    }
                }
            }
            .foregroundColor(Color.white)
            
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
