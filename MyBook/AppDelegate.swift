//
//  AppDelegate.swift
//  MyBook
//
//  Created by Chingiz Jumanov on 28/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        let vc = IntroVC(nibName: "IntroVC", bundle: nil)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

