//
//  SystemIconBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 18/10/21.
//

import SwiftUI

struct SystemIconBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
//            .scaledToFit()
//            .font(.caption)
//            .font(.system(size: 40))
//            .foregroundColor(.red)
            .frame(width: 200, height: 200)
//            .clipped()
           
    }
}

struct SystemIconBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconBootcamp()
    }
}
