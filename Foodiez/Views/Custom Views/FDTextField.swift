//
//  FDTextField.swift
//  Foodiez
//
//  Created by Marchell on 22/12/20.
//

import SwiftUI

struct FDTextField: View {
    
    var isSecure: Bool = false
    let title: String
    @Binding var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            if !isSecure {
                TextField(self.title, text: self.$value)
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                    .font(Font.custom("Arial", size: 18).bold())
                    .foregroundColor(Color(hex: Configs.CLR_GRAY))
            } else {
                SecureField(self.title, text: self.$value)
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                    .font(Font.custom("Arial", size: 18).bold())
                    .foregroundColor(Color(hex: Configs.CLR_GRAY))
            }
            
            Color(hex: Configs.CLR_LIGHT_GRAY)
                .frame(height: 1)
        }
    }
}

//#if DEBUG
//struct FDTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        FDTextField(title: "Title", value: .constant("Title"))
//            .previewLayout(PreviewLayout.sizeThatFits)
//    }
//}
//#endif
