//
//  FrameBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
//            .background(Color.blue)
//            .frame(width: 300, height: 200, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
        
            .background(Color.red)
            .frame(height: 100,alignment: .bottom)
            .background(Color.blue)
            .frame(width: 150)
            .background(Color.green)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(Color.pink)
            .frame(height:400)
            .background(Color.yellow)
            .frame(maxHeight: .infinity,alignment: .top)
            .background(Color.orange)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
