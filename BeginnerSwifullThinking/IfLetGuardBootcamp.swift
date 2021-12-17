//
//  IfLetGuardBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "TestUser 123"
//    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
//                Text(displayText!)  (Bad Coding)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear() {
//                loadData()
                loadData2()
            }
        }
    }
    
    func loadData(){
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                displayText = "This is the new data"
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. there is no user ID"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID "
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                displayText = "This is the new data"
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
        
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
