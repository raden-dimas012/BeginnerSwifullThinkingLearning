//
//  AppStorageBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here") // default value if nul data
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()){
                let name = "Dimas"
                currentUserName = name
//                UserDefaults.standard.set(name,forKey: "name")
            }
        }
//        .onAppear() {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
