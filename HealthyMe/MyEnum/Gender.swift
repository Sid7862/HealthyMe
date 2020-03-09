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
    static func genderID(valueString: Gender.RawValue) -> String {
           
        switch(valueString){
            
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
    static func genderStringFromID(valueString: String) -> Gender.RawValue {
               
            switch(valueString){
                
            case "1":
                return Gender.Male.rawValue
            case "2":
                return Gender.Female.rawValue
            case "3":
                  return Gender.Other.rawValue
             
            default:
                return ""
            }
    }

    
}



