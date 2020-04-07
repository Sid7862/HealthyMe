//
//  AppointmentModel.swift
//  HealthyMe
//
//  Created by Jeno on 14/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation

struct DataModel: Codable,Hashable,Equatable {

    var status: String?
    var data : AppointmentModel?    /*medicine, pathology, etc    */
  
}

struct AppointmentModel: Codable,Hashable,Equatable {

    var type : String?    /*medicine, pathology, etc    */
    var doctor_id : String?
    var doctor_name : String?
    var appointment_id : String?
    var customer_name : String?
    var medicine : [MedicineModel]?
}

struct MedicineModel: Codable,Hashable,Equatable {
    
    var med_id : String?
    var med_name : String?
    var med_type: String?               /*syrup, capsule, table*/
    var med_frequency : String?          /*30*med_per_consume**/   /* 30 * med_consume_per_time_med_time.count =  15* */
    var med_consume_per_time: String?         /* 1 , 2, 3*/
    var med_consume_per_day : String            /* quamtatiy per day*/
    var med_time : String = ""       /*morning, afternoon, evening, night*/ //array of enums [1,3,4]
    var med_meal_type: String = ""    /* after or before*/
    
}
