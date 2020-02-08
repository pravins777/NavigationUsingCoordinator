//
//  AppDelegate.swift
//  CoordinatorSample
//
//  Created by Nykaa on 01/02/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var coordinator: MainCoordinator?
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
//        let navController = UINavigationController()
//        coordinator = MainCoordinator(navigationController: navController)
//        coordinator?.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
        
        return true
    }


}

