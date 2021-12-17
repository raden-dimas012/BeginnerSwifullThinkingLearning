//
//  OnBoardingView.swift
//  BeginnerSwifullThinking
//
//  Created by Raden Dimas on 20/10/21.
//

import SwiftUI

// Onboarding states :
/*
 0 - Welcome Screen
 1 - Add Name
 2 - Add Age
 3 - Add Gender
 */

struct OnBoardingView: View {
    @State var onBoardingState: Int = 0
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    
    
    // ONBOARDING INPUT
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // FOR THE ALLERT
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // APP STORAGE
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            
            ZStack {
                switch onBoardingState {
                case 0:
//                    RoundedRectangle(cornerRadius: 25.0)
//                        .foregroundColor(.red)
                welcomeSection
                    .transition(transition)
                    
                case 1:
                    addNameSection
                        .transition(transition)
                    
                case 2:
                    addAgeSection
                        .transition(transition)
                    
                case 3:
                    addGenderSection
                        .transition(transition)
                    
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                
                buttomButton
                
            }
            .padding(40)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    
    
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
            .background(Color.purple)
    }
}

// MARK: COMPONENTS

extension OnBoardingView {
    
    private var buttomButton: some View {
        Text(onBoardingState == 0 ? "SIGN UP" :
            onBoardingState == 3 ? "FINISH" :
            "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10.0)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y:5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! in this tutorial we are practicing using AppStorage and other SwiftUI technique.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
   
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
    
            Text("What's is your name? ")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            
            TextField("Your name here ...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10.0)
    
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            
            Spacer()
            Text("What's is your age? ")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
           
            Text("\( String(format: "%.0f",age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
    
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            
            Spacer()
            Text("What's is your gender? ")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
           
            Picker(selection: $gender,
                   label:
                    Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10.0),
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non - Binary").tag("Non - Binary")
            })
                .pickerStyle(MenuPickerStyle())
    
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
}

// MARK: FUNCTIONS

extension OnBoardingView {
    
    
    func handleNextButtonPressed() {
        
        // CHECK INPUTS
        
        switch onBoardingState {
        case 1:
            guard name.count >= 3 else {
                
                showAlert(title: "Your name must be at least 3 characters long! 😀")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward! 😇")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onBoardingState == 3 {
            // sign in
            signIn()
        } else {
            onBoardingState += 1
        }
        
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
        
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
}
