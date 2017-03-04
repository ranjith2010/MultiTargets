//
//  AppDelegate.swift
//  Targets
//
//  Created by Ranjith Kumar on 10/02/2017.
//  Copyright © 2017 F22Labs. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.setEnvironment()
        return true
    }
    
    func setEnvironment() {
        #if DEVELOPMENT
            serverEndPointURL = "www.dev.google.com"
        #else
            serverEndPointURL = "www.google.com"
        #endif
    }

}

