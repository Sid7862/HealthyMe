//
//  AppUtils.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation

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
}
