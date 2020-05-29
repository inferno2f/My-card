//
//  ContentView.swift
//  Vlad's Card
//
//  Created by Vladislav Nikitin on 5/22/20.
//  Copyright © 2020 Vladislav Nikitin. All rights reserved.
//

import SwiftUI
import MessageUI

struct ContentView: View {

    /// The delegate required by `MFMailComposeViewController`
    private let mailComposeDelegate = MailDelegate()
    
    var body: some View {
        
        ZStack{
            Color(.systemBlue)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                //Profile photo and occupation
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
                
                //Call Button
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
                
                //Email button
                Button (action: {
                    self.presentMailCompose()
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


//MARK: The mail part
extension ContentView {

    //Delegate for view controller as `MFMailComposeViewControllerDelegate`
    private class MailDelegate: NSObject, MFMailComposeViewControllerDelegate {

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
             print("Failed to send an email")
            controller.dismiss(animated: true)
        }

    }

    // Present an mail compose view controller modally in UIKit environment
    private func presentMailCompose() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let vc = UIApplication.shared.keyWindow?.rootViewController

        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = mailComposeDelegate

        composeVC.setToRecipients(["nikitinv91@gmail.com"])

        vc?.present(composeVC, animated: true)
    }
}


