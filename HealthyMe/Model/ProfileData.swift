//
//  ProfileData.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation
import RealmSwift

final class ProfileData: ObservableObject {
    @Published var profiles: [ProfileModel]
    private var profilesToken: NotificationToken?

// Grab channels from Realm, and then activate a Realm token to listen for changes.
init() {
    let realm = try! Realm()
    profiles = Array(realm.objects(ProfileModel.self)) // Convert Realm results object to Array
    activateprofilesToken()
}

private func activateprofilesToken() {
    let realm = try! Realm()
    let profiles = realm.objects(ProfileModel.self)
    profilesToken = profiles.observe { _ in
        // When there is a change, replace the old channels array with a new one.
        self.profiles = Array(profiles)
    }
}

deinit {
    profilesToken?.invalidate()
}
}
