//
//  Gender.swift
//  HealthyMe
//
//  Created by Jeno on 24/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

enum Gender: String
{
    case Male = "Male"
    case Female = "Female"
    case Other = "Other"
}

extension Gender
{
    func gender() -> Int {
           
           switch self
           {
           case .Male:
                return 0
           case .Female:
                return 1
           case .Other:
                return 2
           }
           
}
}


