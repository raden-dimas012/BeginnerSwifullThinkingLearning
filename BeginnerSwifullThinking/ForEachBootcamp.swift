//
//  ForEachBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi","Hello","Hey EveryOne"]
    let myString: String = "Hello"
    var body: some View {
//        VStack{
//            ForEach(0..<10){ index in
//                HStack{
//                    Circle()
//                        .frame(width: 30, height: 30)
//
//                    Text(" Index is : \(index)")
//                }
//            }
//        }
        
        VStack{
            ForEach(data.indices){ index in
                HStack{
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("\(data[index]): \(index)")
                }
                
            }
            
            
        }
        
        
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
