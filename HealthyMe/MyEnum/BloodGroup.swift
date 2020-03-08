//
//  BloodGroup.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//


enum BloodGroup: String {
    case APostive    =  "A+"
    case BPostive    =  "B+"
    case ANegative   =  "A-"
    case BNegvative  =  "B-"
    case ABPostive   =  "AB+"
    case ABNegvative =  "AB-"
    case OPositive   =  "O+"
    case ONegative   =  "O-"
    
}

extension BloodGroup
{
    static func bloodGroupID(valueString: BloodGroup.RawValue) -> String {
           
        switch(valueString){
            
        case BloodGroup.APostive.rawValue:
                return "1"
        case BloodGroup.BPostive.rawValue:
                return "2"
        case BloodGroup.ANegative.rawValue:
                return "3"
        case BloodGroup.BNegvative.rawValue:
                return "4"
        case BloodGroup.ABPostive.rawValue:
                return "5"
        case BloodGroup.ABNegvative.rawValue:
                return "6"
        case BloodGroup.OPositive.rawValue:
                return "7"
        case BloodGroup.ONegative.rawValue:
                return "8"
        default:
                return ""
        }
}
}
