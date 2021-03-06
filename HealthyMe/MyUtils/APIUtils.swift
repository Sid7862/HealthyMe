//
//  APIUtils.swift
//  Consentium
//
//  Created by Asad Choudhary on 6/6/18.
//  Copyright © 2018 Block Gemini. All rights reserved.
//

import UIKit


class APIUtils {
    
    
    public static func GetDeviceId() -> String
    {
        let deviceId = KeychainManager.getDeviceIdentifierFromKeychain();
        return deviceId;
    }
    
    public static func GetDefaultHeader() -> [String:String]
    {
        let deviceToken = GetDeviceId();
        let header = [
            "device-id": deviceToken,
            "lang": "en"//LanguageUtils.getLanguageCodeFromLanguageForPost(langCode: AppDefaults.getLanguageType())
        ];
        return header;
    }
    
    public static func GetAuthorizationHeader() -> [String:String]
    {
        let deviceToken = GetDeviceId();
        let token =  GetDeviceId();  //AppDefaults.getAccessToken();

        let header = [
            "Authorization": "Bearer " + token,
            "device-id":deviceToken,
            "lang": "en"//LanguageUtils.getLanguageCodeFromLanguageForPost(langCode: AppDefaults.getLanguageType())
        ];
        return header;
    }
    
    
    

}

