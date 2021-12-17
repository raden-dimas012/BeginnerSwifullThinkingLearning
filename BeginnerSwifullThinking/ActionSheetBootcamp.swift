//
//  ActionSheetBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 19/10/21.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionaSheetOptions = .isOtherPost
    
    
    enum ActionaSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
//        Button("Click Me") {
//            showActionSheet.toggle()
//
//        }
        VStack {
            HStack {
                Circle()
                    .frame(width: 35, height: 35)
                Text("@username")
                Spacer()
                
                Button(action: {
//                    actionSheetOptions = .isMyPost
                    actionSheetOptions = .isOtherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
              
            }
            .padding(.horizontal)
            
            
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    
    func getActionSheet() -> ActionSheet {
         
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        
        let title = Text("What would you like to do?")
        
        switch actionSheetOptions {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton,reportButton,deleteButton,cancelButton])
        }
        
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text(""),
//            message: Text(""),
//            buttons: [button1,button1,button1,button2,button3])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
