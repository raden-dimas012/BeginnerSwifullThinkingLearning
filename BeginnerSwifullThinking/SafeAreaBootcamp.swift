//
//  SafeAreaBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Hello World")
//                Spacer()
//            }
//        }
        
        ScrollView{
            VStack{
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height:150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
        }
        .background(
            Color.red
               // .edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea(edges: .top) // new
        )
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
