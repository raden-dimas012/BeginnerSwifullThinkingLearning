//
//  DocumentationBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples","Oranges","Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    //MARK: BODY
    
    // Working copy - things to do :
    // 1) Fix title
    // 2) Fix Alert
    // 3) Fix something else
    
    // Working copy - things to do :
    /*
      1) Fix title
      2) Fix Alert
      3) Fix something else
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.edgesIgnoringSafeArea(.all)
                
                // foreground
                foreground
              
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: Button("Allert",action : {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the aller" )
            })
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollview.
    private var foreground: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data,id:\.self) { name in
                Text(name)
                    .font(.headline)
            }
        }  // END: SCROLLV
    }
    
    //MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates adn returns an alert immediately. The allert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the allert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    //MARK : PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
