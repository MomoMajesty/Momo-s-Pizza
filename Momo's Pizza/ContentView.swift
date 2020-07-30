//
//  LoginScreen.swift
//  Momo's Pizza
//
//  Created by Momo on 7/25/20.
//  Copyright © 2020 Momo. All rights reserved.
//

import SwiftUI
import FBSDKLoginKit






    struct ContentView: View {
        
      
        @State private var emailString  : String = ""
        @State private var password    : String = ""
        var body: some View {
            
            NavigationView {
            
            VStack {

               
                
                
                VStack {
            
                    GeometryReader { geo in
                              Image("Asset7")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.leading)
                                .frame(width: 1080, height: 1920, alignment: .center)
                                
                          }
                  
                    VStack(alignment: .leading, spacing: 20) {
                    TextField("Email", text: self.$emailString)
                        .padding()
                        .background(Color(red: 242, green: 242, blue: 242))
                        .cornerRadius(60)
                        
                        SecureField("Password", text: self.$password)
                            .padding()
                        .background(Color(red: 242, green: 242, blue: 242))
                            .cornerRadius(60)
//                        Spacer()
                        
                       
                            VStack {
                                NavigationLink(destination: itemDetail()) {
                            
                            Text("Sign in")
                            .padding(.all)
                                    
                            .font(.title)
                                      
                       
                        }
                          
                    
                        }
                    
                    }
                    .background(Color(.init(cgColor: .init(srgbRed: 106, green: 90, blue: 73, alpha: 0))))
                   
                    }
               
                }
                  
            }
              
        }
 

        }
        
    struct LoginScreen_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }

