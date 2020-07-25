//
//  LoginScreen.swift
//  Momo's Pizza
//
//  Created by Momo on 7/25/20.
//  Copyright © 2020 Momo. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    
    
    
    @State private var emailString  : String = ""
    @State private var password    : String = ""
    var body: some View {
        VStack {
            VStack {
                GeometryReader { geo in
                          Image("Asset1")
                              .resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: geo.size.width)
                      }
                
                 
//                .font(.largeTitle).foregroundColor(Color.white)
//                 .padding([.top, .bottom], 40)
//                 Image("Asset2")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .clipShape(Circle())
//                .shadow(radius: 10)
//                .padding(.bottom, 50)
                VStack(alignment: .leading, spacing: 20) {
                TextField("Email", text: self.$emailString)
                    .padding()
                    .background(Color(red: 242, green: 242, blue: 242))
                    .cornerRadius(60)
                    SecureField("Password", text: self.$password)
                        .padding()
                    .background(Color(red: 242, green: 242, blue: 242))
                        .cornerRadius(60)
                    Spacer()
                 Button("Sign In") {}
                    .padding(.all)
                    .background(Color(red: 242, green: 242, blue: 242))
                    .cornerRadius(60)
                    Spacer()
                    
                }
            }
        }
        
    }


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
    
}
}
