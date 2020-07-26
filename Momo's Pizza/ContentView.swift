//
//  LoginScreen.swift
//  Momo's Pizza
//
//  Created by Momo on 7/25/20.
//  Copyright © 2020 Momo. All rights reserved.
//

import SwiftUI
import FBSDKLoginKit
import JavaScriptCore



struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct ContentView: View {
    
    @State private var results = [Result]()
    
    @State private var emailString  : String = ""
    @State private var password    : String = ""
    var body: some View {
        
        
        
        VStack {
            
            List(results, id: \.trackId) { item in
                VStack(alignment: .leading) {
                    Text(item.trackName)
                        .font(.headline)
                    Text(item.collectionName)
                }
            }
            .onAppear(perform: loadData)
        
            VStack {
                GeometryReader { geo in
                          Image("Asset1")
                              .resizable()
                              .aspectRatio(contentMode: .fill)
                              .frame(width: geo.size.width)
                               
                    
                    
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
//                    Spacer()
                    
                 Button("Sign In") {}
                    .padding(.all)
                    .background(Color.red)
//                    Spacer()
                    
                }
                Button(action: {
                    LoginManager().logIn(permissions: ["public_profile", "email"], from: UIHostingController(rootView: self)) { (result, error) in
                        
                        
                        
                        //Do stuff here
                    }
                    self.loadData()
                }) {
                    Text("Continue with Facebook")
//                    
                   
                }
            
            }
        }
        
    }

    func loadData() {
        guard let url = URL(string: "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v7.0&appId=318816839157247&autoLogAppEvents=1") else {
        print("Invalid URL")
        return
    }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            // step 4
            
            
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.results = decodedResponse.results
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    
struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
}
