//
//  ContentView.swift
//  Momo's Pizza
//
//  Created by Momo on 7/25/20.
//  Copyright © 2020 Momo. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
        VStack {
            GeometryReader { geo in
            Image("Asset1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geo.size.width)

                
            
        }
            NavigationLink(destination: LoginScreen()) {Text("Slice it, eat it!")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            }
                }
    
            }
    
}


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
