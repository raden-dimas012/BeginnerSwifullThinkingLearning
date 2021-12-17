//
//  SheetsBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(Color.green)
                    .background(Color.white.cornerRadius(10.0))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondView()
            })
//            .sheet(isPresented: $showSheet, content: {
            // DONT ADD CONDITIONAL LOGIC IN HERE!
//                SecondView()
//            })
        }
    }
}


struct SecondView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding(20)
                    .foregroundColor(Color.white)
            })
        }
    }
    
    
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondView()
    }
}
