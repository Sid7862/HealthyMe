//
//  AppUtils.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

enum idType {
   
    case medicineID
    case PrescriptionID
    case userID

}

class AppUtils {
public static func generateUniqueID(type: idType)->String
   {
       switch type {
       case idType.medicineID:
            let randomInt = arc4random_uniform(1000000);
                return "\("mid_")\(randomInt)\(Date().timeIntervalSince1970)"
           
           case idType.PrescriptionID:
           let randomInt = arc4random_uniform(1000000);
           return "\("pid_")\(randomInt)\(Date().timeIntervalSince1970)"
           
           case idType.userID:
               let randomInt = arc4random_uniform(1000000);
               return "\("uid_")\(randomInt)\(Date().timeIntervalSince1970)"
     
    
   }
}
    public static func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    public static func getAllserUser() -> Results<ProfileModel>
       {
           let realm = try! Realm()
           let users = realm.objects(ProfileModel.self);
           return users;
       }
       
    public static func getMainUser() -> ProfileModel?
          {
              let realm = try! Realm()
             guard let user = realm.objects(ProfileModel.self).filter("self_profile == '\(0)'").first else
             {
                return nil
             }
            return user
          }
          
}
