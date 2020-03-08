//
//  BloodGroup.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//


enum BloodGroup: String {
    case APostive = "A+"
    case BPostive = "B+"
    case ANegative = "A-"
    case BNegvative = "B-"
    case ABPostive = "AB+"
    case ABNegvative = "AB-"
    case OPositive = "O+"
    case ONegative = "O-"
    
}

extension BloodGroup
{
    static func bloodGroupID(value: BloodGroup.RawValue) -> String {
           
        switch(value){
            
        case BloodGroup.APostive.RawValue:
                return "1"
        case BloodGroup.BPostive.RawValue:
                return "2"
        case BloodGroup.ANegative.RawValue:
                return "3"
        case BloodGroup.BNegvative.RawValue:
                return "4"
        case BloodGroup.ABPostive.RawValue
            :
                return "5"
        case BloodGroup.ABNegvative.RawValue:
                return "6"
        case BloodGroup.OPositive.RawValue:
                return "7"
        case BloodGroup.ONegative.RawValue:
                return "8"
        default:
                return ""
        }
}
}
