//
//  ContextMenuBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking ")
            Text("How to use Context Menu")
        }
        .foregroundColor(Color.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(10.0))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .black
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Label("Report post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .orange
            }, label: {
                Label("Like post", systemImage: "flame.fill")
            })
            
//            Text("Menu Item 2")
//            Text("Menu Item 3")
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
