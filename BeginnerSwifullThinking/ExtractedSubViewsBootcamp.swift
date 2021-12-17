//
//  ExtractedSubViewsBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct ExtractedSubViewsBootcamp: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(backgroundColor: Color.red, count: 10, title: "Apple")
            MyItem(backgroundColor: Color.green, count: 1, title: "Watermelon")
            MyItem(backgroundColor: Color.yellow, count: 20, title: "Bananas")
        }
    }

}

struct ExtractedSubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubViewsBootcamp()
    }
}

struct MyItem: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(15.0)
    }
}
