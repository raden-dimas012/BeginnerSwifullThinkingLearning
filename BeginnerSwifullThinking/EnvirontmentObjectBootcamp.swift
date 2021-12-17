//
//  EnvirontmentObjectBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI


// ObservedObject
// StateObject
// EnvirontmentObject


class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []

    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(
            contentsOf: ["iPhone","iPad","iMac","Apple Watch"])
    }
    
    
}

struct EnvirontmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    
    var body: some View {
        
        
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
        
    }
}


struct DetailView: View {
    
    let selectedItem: String
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                })
            
           
        }
    }
}


struct FinalView: View {
    
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))]),
                startPoint: .topLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvirontmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvirontmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
