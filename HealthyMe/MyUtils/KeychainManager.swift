
import UIKit
import JNKeychain

class KeychainManager: NSObject {
    static let sharedInstance = KeychainManager()
    
    public static func getDeviceIdentifierFromKeychain() -> String {
        
        // try to get value from keychain
        var deviceUDID = self.keychain_valueForKey("keychainDeviceUDID") as? String
        if deviceUDID == nil {
            deviceUDID = UIDevice.current.identifierForVendor!.uuidString
            // save new value in keychain
            self.keychain_setObject(deviceUDID! as AnyObject, forKey: "keychainDeviceUDID")
        }
        return deviceUDID!
    }
    
    // MARK: - Keychain
    
    public static func keychain_setObject(_ object: AnyObject, forKey: String) {
        let result = JNKeychain.saveValue(object, forKey: forKey)
        if !result {
            print("keychain saving: smth went wrong")
        }
    }
    
    public static func keychain_deleteObjectForKey(_ key: String) -> Bool {
        let result = JNKeychain.deleteValue(forKey: key)
        return result
    }
    
    public static func keychain_valueForKey(_ key: String) -> AnyObject? {
        let value = JNKeychain.loadValue(forKey: key)
        return value as AnyObject?
    }
}
