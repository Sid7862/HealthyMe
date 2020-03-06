//
//  days.swift
//  HealthyMe
//
//  Created by Jeno on 05/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation
import UIKit
struct outPut
{
    var id = UUID()
    var day : String
    var number : String
    var month : String
   
}

class days
{
 /*
    static func createDays() -> ([String],[String])
       {
     
        var arrayDays : [String] = []
        var arrayNumbers : [String] = []

        
        for i in 0...6
        {
          let date = Date().addingTimeInterval(TimeInterval(86400 * i))
          var dateFormatter = DateFormatter()
          dateFormatter.dateFormat = "EEE"
          arrayDays.append(dateFormatter.string(from: date))
          dateFormatter.dateFormat = "dd"
          arrayNumbers.append(dateFormatter.string(from: date))

         }
        return (arrayDays, arrayNumbers)
  }
 */
    static func createDays() -> [outPut]
          {
        
           var array : [outPut] = []

           
           for i in 0...6
           {
             let date = Date().addingTimeInterval(TimeInterval(86400 * i))
             var out =  outPut.init(day: "", number: "", month: "")
              
             let dateFormatter = DateFormatter()
             dateFormatter.dateFormat = "EEE"
             out.day = (dateFormatter.string(from: date))
             dateFormatter.dateFormat = "dd"
             out.number = (dateFormatter.string(from: date))
             dateFormatter.dateFormat = "MMM"
             out.month = (dateFormatter.string(from: date))
             array.append(out)
            

            }
           return array
     }
}
