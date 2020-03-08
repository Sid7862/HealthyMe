//
//  Profile.swift
//  HealthyMe
//
//  Created by Jeno on 24/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

class ProfileModel: Object
{
  
      @objc dynamic var prof_name = "";
      @objc dynamic var self_profile = "0";
      @objc dynamic var prof_image = "";
      @objc dynamic var email = "";
      @objc dynamic var countryCode = "+91";
      @objc dynamic var prof_relationship = "";
//      @objc dynamic var userName = "";
//      @objc dynamic var isPhoneVerified = false;
//      @objc dynamic var isEmailVerified = false;
//      @objc dynamic var role = "";
      @objc dynamic var createdAt = Date();
      @objc dynamic var prof_mobile = "9999999999";
     // @objc dynamic var prof_address = "";
      @objc dynamic var prof_blood_grp = "";
      @objc dynamic var prof_dob = Date();
      @objc dynamic var prof_gender = "";
      @objc dynamic var prof_isActive = "1";
      @objc dynamic var prof_id = AppUtils.generateUniqueID(type: idType.userID);



      override static func primaryKey() -> String? {
        return "prof_id";
    }
    
}
