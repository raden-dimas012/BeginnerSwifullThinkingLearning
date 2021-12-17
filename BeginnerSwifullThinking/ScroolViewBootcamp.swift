//
//  ScroolViewBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct ScroolViewBootcamp: View {
    var body: some View {
//        ScrollView {
//            VStack {
//                ForEach(0..<10) { index in
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .fill(Color.white)
//                        .frame(width: 400, height: 200)
//                        .shadow(radius: 10)
//                        .padding()
//                }
//            }
//        }
        
        ScrollView{
            LazyVStack{ // creating row  when needing because it's lazy
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                        
                    })
                }
                
            }
        }
    }
}

struct ScroolViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
     
            ScroolViewBootcamp()
       
    }
}
