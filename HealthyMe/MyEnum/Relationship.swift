//
//  Gender.swift
//  HealthyMe
//
//  Created by Jeno on 24/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//




enum Relationship: String
{
    case Myself =  "Self"
    case Father =   "Father"
    case Mother =  "Mother"
    case Sibling =  "Sibling"
    case GrandParent =  "Grand Parent"


    public static let realationShip = ["Self","Father","Mother", "Sibling", "Grand Parent"]


}

extension Relationship
{
    static func realationshipID(valueString: Relationship.RawValue) -> String {
           
        switch(valueString){
            
        case Relationship.Myself.rawValue:
                return "1"
        case Relationship.Father.rawValue:
                return "2"
        case Relationship.Mother.rawValue:
                return "3"
        case Relationship.Sibling.rawValue:
                return "4"
        case Relationship.GrandParent.rawValue:
                return "5"
         
        default:
            return ""
        }
}
    
    static func realationshipStringFromID(valueString: String) -> Gender.RawValue {
                  
               switch(valueString){
                   
               case "1":
                   return Relationship.Myself.rawValue
               case "2":
                   return Relationship.Father.rawValue
               case "3":
                    return Relationship.Mother.rawValue
               case "4":
                    return Relationship.Sibling.rawValue
               case "5":
               return Relationship.GrandParent.rawValue
                
                
               default:
                   return ""
               }
       }
}



