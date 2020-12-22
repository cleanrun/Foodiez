//
//  LoginView.swift
//  Foodiez
//
//  Created by Marchell on 22/12/20.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject private var loginVM = LoginVM()
    
    var body: some View {
        ZStack {
            VStack() {
                Text("Log in")
                    .font(Font.custom("Arial", size: 35))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 40, leading: 0, bottom: 80, trailing: 0))
                
                FDTextField(isSecure: false, title: "Username", value: self.$loginVM.username)
                    .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                
                FDTextField(isSecure: true, title: "Password", value: self.$loginVM.password)
                    .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                
                Text("Forgot Password?")
                    .font(Font.custom("Arial", size: 15))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(EdgeInsets(top: 10, leading: 13, bottom: 0, trailing: 13))
                    .foregroundColor(Color(hex: Configs.CLR_LINK))
                
                Button("Login") {
                    self.loginVM.performLogin {
                        // FIXME: Change this soon
                    }
                }.buttonStyle(PrimaryButtonStyle())
                .frame(height: 50, alignment: .center)
                .padding(EdgeInsets(top: 40, leading: 13, bottom: 40, trailing: 13))
                
                Spacer()
                
                Text("Sign up and account")
                    .font(Font.custom("Arial", size: 18))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(EdgeInsets(top: 10, leading: 13, bottom: 10, trailing: 13))
                    .foregroundColor(Color(hex: Configs.CLR_LINK))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
