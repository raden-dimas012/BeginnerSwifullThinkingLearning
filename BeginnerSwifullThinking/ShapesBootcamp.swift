//
//  ShapesBoocamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 16/10/21.
//

import SwiftUI

struct ShapesBoocamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10.0)
            
//            .fill(Color.blue)
//            .foregroundColor(.blue)
//            .stroke()
//            .stroke(Color.blue,lineWidth: 10.0)
//            .stroke(Color.orange,style: StrokeStyle(lineWidth: 30.0, lineCap: .round, dash: [30]))
//            .trim(from: 0.3, to: 1.0)
//            .stroke(Color.red,lineWidth: 30.0)
            .frame(width: 200, height: 200)
    }
}

struct ShapesBoocamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBoocamp()
    }
}
