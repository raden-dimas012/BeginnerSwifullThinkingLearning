//
//  Stacks.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        VStack(alignment: .leading, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//        })
        
//        ZStack(alignment: .center, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//        })
        
//        ZStack(alignment:.top){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 400, height: 500)
//
//            VStack(alignment:.leading){
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment:.bottom){
//                    Rectangle()
//                        .fill(Color.yellow)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.yellow)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.yellow)
//                        .frame(width: 75, height: 75)
//                }
//                .background(Color.white)
//
//            }
//            .background(Color.black)
//
//        }
        
        VStack{
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
        }
    
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
