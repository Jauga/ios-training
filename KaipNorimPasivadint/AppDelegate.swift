//
//  AppDelegate.swift
//  KaipNorimPasivadint
//
//  Created by Manvydas on 2017-08-17.
//  Copyright © 2017 Manvydas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var testNavigationController : UINavigationController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = ViewController()
        self.window?.rootViewController = mainViewController
        self.window?.makeKeyAndVisible()

        // Override point for customization after application launch.
        return true
    }
}

