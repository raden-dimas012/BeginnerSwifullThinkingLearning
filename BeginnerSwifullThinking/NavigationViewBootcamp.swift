//
//  NavigationView.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                 NavigationLink("Hello,World !", destination:  MyOtherScreen())
                
                Text("Hello,World !")
                Text("Hello,World !")
                Text("Hello,World !")
            }
            .navigationTitle("All inbox")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear").font(.largeTitle)
//                                .accentColor(.black)
                        })
//                    .accentColor(.black)
                   
                )
        }
    }
}


struct MyOtherScreen: View {
    
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Hallo Dimas !")
                .navigationBarHidden(true)
            
            
            VStack {
                Button ("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here ...", destination: Text("3rd Screen!"))
            }
        }
    }
    
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
