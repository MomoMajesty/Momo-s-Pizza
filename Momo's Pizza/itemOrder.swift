//
//  ContentView.swift
//  TMTC
//
//  Created by Momo on 8/5/20.
//  Copyright © 2020 Momo. All rights reserved.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    var id: String { name } // needed for `Identifiable`

    let name: String
    let imageView: String
    let description: String
}
//struct ImageView: View {
//    let imageView: String
//
//    var body: some View {
//        Image(imageView)
//        .resizable()
//           .aspectRatio(contentMode: .fill)
//           .frame(width: 280, height: 210, alignment: .center)
//           .cornerRadius(20)
//    }
//}


struct itemOrder: View {
     
    @State var items = [
        Item(name: "", imageView: "Asset2", description: "Tomato sauce, fresh mozarella, basil"),
        Item(name: "", imageView: "Asset3", description: "some description of item 2"),
        Item(name: "", imageView: "Asset5", description: "some description of item 3"),
    ]

    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                ForEach(items, id: \.self) { item in
                    
                    DetailView(item: item)
                }
                Spacer()
            }
            .navigationBarTitle("Choose your Pizza")
            .padding()
        }
    }
    }
    
    struct DetailView: View {
        @State var showDescription = false
        @State private var showDetails = false
         
        let item: Item
        
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Text(item.name)
            Image(item.imageView)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 280, height: 210, alignment: .center)
            .cornerRadius(20)
            if showDescription {
                Button(action: {
            self.showDetails.toggle()
            }) {
                Image(systemName: "cart")

            }
                if self.showDetails {
                    Image(systemName: "cart.fill.badge.plus")
//                    .padding()
                    
                              }
//                Spacer()
                Text(item.description)
                    .font(.footnote)
                    .fontWeight(.light)
//                .fixedSize(horizontal: false, vertical: true)
//                     .fixedSize(horizontal: true, vertical: false)
//                    .multilineTextAlignment(.center)
//                    .lineLimit(nil)
//                    .frame(idealHeight: .infinity)
//                   .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                Spacer()
                Image(item.imageView)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 280, height: 210, alignment: .center)
                .cornerRadius(20)
                
            }
           
            }
        

            .onTapGesture {
                self.showDescription.toggle()
            
    }
        
        }
    }
       
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        itemOrder()
    }
}






