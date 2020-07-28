//
//  itemDetail.swift
//  Momo's Pizza
//
//  Created by Momo on 7/27/20.
//  Copyright © 2020 Momo. All rights reserved.
//

import SwiftUI

struct itemDetail: View {
    var body: some View {
        ZStack {
            VStack{
                Spacer()
                
            }
                Image("Asset2")
            .frame(width: 300, height: 220)
            .background(Image("Asset4"))
            .aspectRatio(contentMode: .fit)
            .frame(width: 280, height: 210, alignment: .center)
        .cornerRadius(20)
        .shadow(radius: 20)
            Spacer()
        
        
         VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text ("Pizza")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    .position(.init(x: 230, y: 330))


                }
                Spacer()
                Image("Asset")

            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            Spacer()
            Image("Asset3")
            .resizable()
            .aspectRatio(contentMode: .fit)
                .frame(width: 280, height: 210, alignment: .center)
            .cornerRadius(20)
            .shadow(radius: 20)
            .position(.init(x: 210, y: 330))
//            .background(Image("Asset4"))
//            .aspectRatio(contentMode: .fit)
//                .frame(width: 280, height: 210, alignment: .center)
//            .cornerRadius(20)
//            .shadow(radius: 20)
            
        }
//            .padding(.horizontal, 0)
//            .padding(.top, -200)
            Spacer()
            Image("Asset5")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 280, height: 210, alignment: .center)
            .cornerRadius(20)
            .shadow(radius: 20)
            .frame(width: 330, height: 200, alignment: .center )
            .background(Image("Asset2"))
            .aspectRatio(contentMode: .fit)
            .frame(width: 290, height: 250)
            .cornerRadius(20)
            .shadow(radius: 20)
    }
       
}

struct itemDetail_Previews: PreviewProvider {
    static var previews: some View {
        itemDetail()
    }
}
}
