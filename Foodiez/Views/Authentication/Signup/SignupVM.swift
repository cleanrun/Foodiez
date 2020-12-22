//
//  SignupVM.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import Foundation
import SwiftUI

class SignupVM: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    
    func performSignup(completion: @escaping () -> Void) {
        // FIXME: Save the account here
    }
}
