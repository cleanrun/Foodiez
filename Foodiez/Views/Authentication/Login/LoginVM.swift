//
//  LoginVM.swift
//  Foodiez
//
//  Created by Marchell on 22/12/20.
//

import Foundation
import SwiftUI

class LoginVM: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    
    func performLogin(completion: @escaping () -> Void) {
        // FIXME: Save the user data here
    }
}
