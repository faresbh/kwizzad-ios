//
//  AppDelegate.swift
//  KwizzadExample
//
//  Created by Sandro Manke on 22.09.16.
//  Copyright © 2016 Kwizzad. All rights reserved.
//

import UIKit
import RxSwift
import KwizzadSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var bag = DisposeBag()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // https://tvsmiles.atlassian.net/wiki/display/TVS/Komet+deployment+overview
        
        KwizzadSDK.instance.configure(Configuration.create()
            .apiKey("b7220655bd54399edac9d9c6962f521d7c1cfed0f168e908a37ce4b2b6c7bcd2")
            .overrideServer("https://labs.tvsmiles.tv/api/sdk/")
            
            //.apiKey("31dfa15b805f3aafb3d174177f31da1a01539a7635389ac1379eac300fabb83d")
            //.overrideWeb("https://kastaging.tvsmiles.tv")
            //.overrideWeb("https://kadev.kwizzad.com")
            .debug(true)
            .build()
        )
        
        print("KWIZZAD configured")
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
    }
}

