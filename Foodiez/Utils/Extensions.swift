//
//  ViewExtensions.swift
//  Foodiez
//
//  Created by Marchell on 22/12/20.
//

import Foundation
import SwiftUI

// MARK: Button Styles
struct WhiteRectangleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.custom("Arial", size: 18))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .contentShape(Rectangle())
            .foregroundColor(.black)
            .background(configuration.isPressed ? Color.gray.opacity(0.5) : Color.white)
            .cornerRadius(8)
            .shadow(radius: 5)
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.custom("Arial", size: 18))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .contentShape(Rectangle())
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color(hex: Configs.BG_PRIMARY_2).opacity(0.5) : Color(hex: Configs.BG_PRIMARY_2))
            .cornerRadius(8)
            .shadow(radius: 3)
    }
}

// MARK: Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

// MARK: View Extension
extension View {
    func goToLogin() {
        //let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        if let windowSceneDelegate  = scene?.delegate as? SceneDelegate {
            let window = UIWindow(windowScene: scene!)
            window.rootViewController = UIHostingController(rootView: LoginView())
            windowSceneDelegate.window = window
            window.makeKeyAndVisible()
        }
    }
}

// MARK: UIScreen Extension
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

// MARK: Double Extension
extension Double {
    public static func random(lower: Double = 0, upper: Double = 100) -> Double {
        return (Double(arc4random()) / 0xFFFFFFFF) * (upper - lower) + lower
    }
}
