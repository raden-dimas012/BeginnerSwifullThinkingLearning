//
//  GridViewBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct GridViewBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(150),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
        
//        GridItem(.flexible( ),spacing: nil,alignment: nil)
        
//        GridItem(.adaptive(minimum: 50, maximum: 150),spacing: nil,alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 250),spacing: nil,alignment: nil)
        
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil)
        // spacing in here is for horizontal
    ]
    
    
    
    var body: some View {
        ScrollView{
            
//            ZStack {
//                Rectangle()
//                    .fill(Color.white)
//                    .frame(height: 400)
//
//                VStack{
//                    Circle()
//                        .frame(height: 150)
//
//                    Text("Your Name")
//                }
//            }
//
//
//            LazyVGrid(columns: columns) {
//                ForEach(0..<25){ index in
//                    Rectangle()
//                        .frame(height:150)
//                }
//            }
            
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6, // spacing in here for vertical
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .padding()
                    ) {
                        ForEach(0..<20){ index in
                            Rectangle()
                                .frame(height:150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity)
                                .background(Color.green)
                                .padding()
                    ) {
                        ForEach(0..<20){ index in
                            Rectangle()
                                .frame(height:150)
                        }
                    }
                    
                })

        }
    }
}

struct GridViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridViewBootcamp()
    }
}
