//
//  MyBioView.swift
//  Vlad's Card
//
//  Created by Vladislav Nikitin on 5/22/20.
//  Copyright © 2020 Vladislav Nikitin. All rights reserved.
//

import SwiftUI

struct MyBioView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .shadow(radius: 5)
            .foregroundColor(.white)
            .frame(width: 300, height: 35, alignment: .center)
            .overlay(HStack{
                Image(systemName: imageName)
                    .foregroundColor(Color(.systemBlue))
                Text(text)
                    .font(.custom("PFHighwaySansPro-Light", size: 18))
                    .foregroundColor(.black)
            })
    }
}

struct MyBioView_Previews: PreviewProvider {
    static var previews: some View {
        MyBioView(text: "Vlad", imageName: "sun.fill")
    }
}
