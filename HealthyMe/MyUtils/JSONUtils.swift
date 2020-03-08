//
//  JSONUtils.swift
//  Consentium
//
//  Created by Asad Choudhary on 7/27/18.
//  Copyright © 2018 Block Gemini. All rights reserved.
//

import UIKit

class JSONUtils {

    public static func GetStringFromObject(object: [String:Any], key: String) -> String
    {
        var value = "";
        if let str = object[key] as? String
        {
            value = str;
        }
        return value;
    }
    
    public static func GetIntFromObject(object: [String:Any], key: String) -> Int
    {
        var value = 0;
        if let val = object[key] as? Int
        {
            value = val;
        }
        return value;
    }
    
    public static func GetBoolFromObject(object: [String:Any], key: String) -> Bool
    {
        var value = false;
        if let val = object[key] as? Bool
        {
            value = val;
        }
        return value;
    }
    
    public static func GetDoubleAsStringFromObject(object: [String:Any], key: String) -> Double
    {
        var value: Double = 0;
        if let str = object[key] as? String
        {
            if let dbl = Double(str)
            {
                if (!dbl.isNaN)
                {
                    value = dbl;
                }
            }
        }
        return value;
    }
    
    public static func GetFloatAsStringFromObject(object: [String:Any], key: String) -> String
    {
        var value = "";
        if let str = object[key] as? String
        {
            value = str;
        }
        return value;
    }
    
    public static func GetDoubleFromObject(object: [String:Any], key: String) -> Double
    {
        var value: Double = 0;
        if let dbl = object[key] as? Double
        {
            if (!dbl.isNaN)
            {
                value = dbl;
            }
        }
        return value;
    }
    
    public static func GetDateFromIntTimeStampObject(object: [String:Any], key: String) -> Date
    {
        var value = Date();
        if let val = object[key] as? Int
        {
            value = Date(timeIntervalSince1970: TimeInterval.init(val/1000));
        }
        return value;
    }
    
    public static func GetDateFromStringObject(object: [String:Any], key: String, dateFormat: String = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'") -> Date
    {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = dateFormat;
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        
        var value = Date();
        if let val = object[key] as? String
        {
            if let dt = dateFormatter.date(from: val)
            {
                value = dt;
            }
        }
        return value;
    }
    
    
    public static func convertToDictionary(_ text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    public static func convertDictionaryToJson(_ dictionary: [String: Any]) -> String?
    {
            let jsonData = try! JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            let jsonString = String(data: jsonData, encoding: .utf8)
            return jsonString
    }
    
    
    
}
