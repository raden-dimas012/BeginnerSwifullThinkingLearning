//
//  SpacerBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing:20){
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .frame(width: 100, height: 100)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .frame(width: 100, height: 100)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//        }
//        .background(Color.pink)
//        .padding(.horizontal,200)
//        .background(Color.blue)
        
        
        VStack{
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
        
            Spacer()
            
            Rectangle()
                .frame(height: 50)
            Spacer()
            Rectangle()
                .frame(height: 50)
        }
//        .background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
