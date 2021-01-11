//
//  AccountTabView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI

struct AccountTabView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button(action: { print("Edit tapped") }) {
                    Text("Edit")
                        .font(Font.custom("Arial", size: 18))
                        .foregroundColor(Color(hex: Configs.CLR_PALE_BLUE))
                }
            }.padding(EdgeInsets(top: 6, leading: 20, bottom: 0, trailing: 20))
            
            FDDivider(height: 50)
            
            VStack {
                Image("person_3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 120, alignment: .center)
                    .clipShape(Circle())
                    .clipped()
                
                FDDivider(height: 15)
                
                Text("Buttercup Cumbersnatch")
                    .font(Font.custom("Arial", size: 22))
                    .fontWeight(.bold)
                
                FDDivider(height: 8)
                
                Text("Stockholm")
                    .font(Font.custom("Arial", size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hex: Configs.CLR_GRAY))
                
                FDDivider(height: 50)
                
                VStack {
                    VStack {
                        FDDivider(height: 10)
                        
                        HStack {
                            Text("Payment Method")
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 18, alignment: .center)
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        }
                        
                        Divider()
                    }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                    
                    VStack {
                        FDDivider(height: 10)
                        
                        HStack {
                            Text("Invite Friends")
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 18, alignment: .center)
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        }
                        
                        Divider()
                    }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                    
                    VStack {
                        FDDivider(height: 10)
                        
                        HStack {
                            Text("Settings")
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 18, alignment: .center)
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        }
                        
                        Divider()
                    }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                    
                    VStack {
                        FDDivider(height: 10)
                        
                        HStack {
                            Text("Log Out")
                                .foregroundColor(Color(hex: Configs.CLR_PALE_RED))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 18, alignment: .center)
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        }
                        
                        Divider()
                    }.padding(EdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14))
                }
            }
            
            Spacer()
        }
    }
}

struct AccountTabView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTabView()
    }
}
