//
//  ContentView.swift
//  Vlad's Card
//
//  Created by Vladislav Nikitin on 5/22/20.
//  Copyright © 2020 Vladislav Nikitin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemBlue)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("vlad")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.gray, lineWidth: 5)
                        .shadow(radius: 5))
                Text("Vlad Nikitin")
                    .foregroundColor(.white)
                    .font(.custom("PFHighwaySansPro-Light", size: 40))
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                    .hidden()
                Button (action: {
                    
                    let cleanString = "79217713659"
                    
                    let formattedString = "tel://\(cleanString)"
                    let url: NSURL = URL(string: formattedString)! as NSURL
                    
                    UIApplication.shared.open(url as URL)
                    
                }) {
                    MyBioView(text: "+7 (921) 771-36-59", imageName: "phone.fill")
                }
                
                Divider()
                    .hidden()
                Button (action: {
                    
                }) {
                    MyBioView(text: "nikitinv91@gmail.com", imageName: "envelope.fill")
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



