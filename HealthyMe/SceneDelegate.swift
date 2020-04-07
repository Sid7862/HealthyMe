//
//  SceneDelegate.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 16/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import UIKit
import SwiftUI
import RealmSwift
import UserNotifications

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
   


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        
        /*
        let config = Realm.Configuration(
                   // Set the new schema version. This must be greater than the previously used
                   // version (if you've never set a schema version before, the version is 0).
                 // change to previous version = 2 -> 3
                // change to current version = 5 -> 6
                   schemaVersion: 1,
                   
                   // Set the block which will be called automatically when opening a Realm with
                   // a schema version lower than the one set above
                   migrationBlock: { migration, oldSchemaVersion in
                       
                       // We haven’t migrated anything yet, so oldSchemaVersion == 0
                       if (oldSchemaVersion == 0) {
                           // Nothing to do!
                           // Realm will automatically detect new properties and removed properties
                           // And will update the schema on disk automatically
                       }
                       

                      
               })
               
               // Tell Realm to use this new configuration object for the default Realm
               Realm.Configuration.defaultConfiguration = config
        
        */
        
//        let val : DataModel = Parsable.load("appointment.json")
//        
//       let jsonEncoder = JSONEncoder()
//        do {
//            let jsonData = try jsonEncoder.encode(val)
//            guard let jsonString = String(data: jsonData, encoding: .utf8) else {return}
//            print("JSON String : " + jsonString)
//        }
//        catch {
//        }
//         
       
        
        
        
        let notificationCenter =  UNUserNotificationCenter.current()
        
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        notificationCenter.requestAuthorization(options: options) {
            (didAllow, error) in
            if !didAllow {
                print("User has declined notifications")
            }
        }
        
        notificationCenter.getNotificationSettings { (settings) in
          if settings.authorizationStatus != .authorized {
            // Notifications not allowed
          }
        } 
        
        
        let contentView =  QRCodeUIView() //MainView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

