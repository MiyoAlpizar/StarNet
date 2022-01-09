//
//  AppDelegate.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//

import UIKit
import Firebase
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        customInit()
        //Starts listening to network changes
        //ReachabilityHelper.shared.startListening()
        return true
    }
    
    func customInit() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        //window?.rootViewController = startVC()
    }


}

