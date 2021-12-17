//
//  DarkModeBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color si Primary ")
                        .foregroundColor(.primary)
                    
                    Text("This color is Secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This color is black")
                        .foregroundColor(.black)
                    
                    Text("This color is white")
                        .foregroundColor(.white)
                    
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
            
    }
}
