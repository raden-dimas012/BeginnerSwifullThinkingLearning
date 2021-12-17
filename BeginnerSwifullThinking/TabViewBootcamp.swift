//
//  TabViewBootcamp.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    
    let icons: [String] = [
    "heart.fill","globe","house.fill","person.fill"
    ]
    
    
    var body: some View {
        
        
        TabView {
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
//            RoundedRectangle(cornerRadius: 25.0)
//            RoundedRectangle(cornerRadius: 25.0)
//            RoundedRectangle(cornerRadius: 25.0)
            
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView (selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.green)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go To profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                })
            }
            
            
        }
    }
}
