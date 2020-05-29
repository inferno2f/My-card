//
//  PhoneCall.swift
//  Vlad's Card
//
//  Created by Vladislav Nikitin on 5/27/20.
//  Copyright © 2020 Vladislav Nikitin. All rights reserved.
//

//import Foundation
//import UIKit
//
//class PhoneCall {
//    func makePhoneCall(phoneNumber: String) {
//        if let phoneURL = NSURL(string: ("tel://" + phoneNumber!)) {
//            let alert = UIAlertController(title: ("Call " + phoneNumber! + "?"), message: nil, preferredStyle: .Alert)
//            alert.addAction(UIAlertAction(title: "Call", style: .Default, handler: { (action) in
//                UIApplication.sharedApplication().openURL(phoneURL)
//            }))
//      
//            alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
//                    
//            self.presentViewController(alert, animated: true, completion: nil)
//        }
//    }
//}
