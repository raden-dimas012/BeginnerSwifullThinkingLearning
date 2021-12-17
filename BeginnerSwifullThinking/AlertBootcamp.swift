//
//  AlertBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alerMessage: String = ""
    @State var backgroundColor: Color = .yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
        
            VStack {
                Button("BUTTON 1") {
                    
                    self.alertType = .error
//                    self.alertTitle = "ERROR UPLOADING VIDEO"
//                    self.alerMessage = "The video couldn't be uploaded"
                    showAlert.toggle()
                }
                
                Button("BUTTON 2") {
                    self.alertType = .success
//                    self.alertTitle = "Successfully upload video 🤪"
//                    self.alerMessage = "Your video is now public 🤓"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
              getAlert()
            })
        }
    }
    
    
    func getAlert() -> Alert {
        
        switch alertType {
            case .error:
                return Alert(title: Text("There was an error"))
            
            case .success:
                return Alert(
                title: Text("This was a succes"),
                message: Text(""),
                    dismissButton: .default(Text("OK"), action: {
                        self.backgroundColor = Color.red
                    }))
            
            default:
                return Alert(title: Text("Error Not Found"))
        }
        
//        return Alert(title: Text(alertTitle), message: Text(alerMessage), dismissButton: .default(Text("OKE")))
        
        
//        return Alert(
//            title: Text("This the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("OKE"), action: {
//                         self.backgroundColor = Color.red
//                }),
//            secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
