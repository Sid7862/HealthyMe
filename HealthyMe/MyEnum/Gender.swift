//
//  Gender.swift
//  HealthyMe
//
//  Created by Jeno on 24/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//




enum Gender: String
{
    case Male =   "🙍‍♂️ Male"
    case Female = "🙍‍♀️ Female"
    case Other =  "🤖 Other"

}

extension Gender
{
    static func genderID(value: Gender.RawValue) -> String {
           
        switch(value){
            
        case Gender.Male.rawValue:
                return "1"
        case Gender.Female.rawValue:
                return "2"
        case Gender.Other.rawValue:
                return "3"
         
        default:
            return ""
        }
}
}



