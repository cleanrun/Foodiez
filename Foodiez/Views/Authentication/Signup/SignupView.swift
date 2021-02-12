//
//  SignupView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI
import NavigationStack

struct SignupView: View {
    
    @StateObject private var signupVM = SignupVM()
    private var navStack = NavigationStack()
    
    var body: some View {
        NavigationStackView(navigationStack: navStack) {
            ZStack {
                VStack() {
                    Text("Welcome to Foodiez")
                        .font(Font.custom("Arial", size: 35))
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 40, leading: 90, bottom: 5, trailing: 90))
                        .multilineTextAlignment(.center)
                    
                    Text("Create your account")
                        .font(Font.custom("Arial", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        .padding(EdgeInsets(top: 0, leading: 40, bottom: 50, trailing: 40))
                        .multilineTextAlignment(.center)
                    
                    FDTextField(isSecure: false, title: "Username", value: self.$signupVM.username)
                        .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                    
                    FDTextField(isSecure: false, title: "Email", value: self.$signupVM.email)
                        .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                    
                    FDTextField(isSecure: true, title: "Password", value: self.$signupVM.password)
                        .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                    
                    Button("Sign up") {
                        
                    }.buttonStyle(PrimaryButtonStyle())
                    .frame(height: 50, alignment: .center)
                    .padding(EdgeInsets(top: 40, leading: 13, bottom: 10, trailing: 13))
                    
                    Text("Terms and conditions")
                        .font(Font.custom("Arial", size: 15))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        .foregroundColor(Color(hex: Configs.CLR_LINK))
                    
                    Spacer()
                    
                    Text("Log in your account")
                        .font(Font.custom("Arial", size: 18))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                        .foregroundColor(Color(hex: Configs.CLR_LINK))
                        .onTapGesture {
                            self.navStack.pop()
                        }
    
                }
            }
        }
    }
    
    private func goToHome() {
        
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
