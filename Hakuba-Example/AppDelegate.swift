//
//  AppDelegate.swift
//  Hakuba-Example
//
//  Created by Hiroaki Egashira on 9/2/16.
//  Copyright © 2016 Hiroaki Egashira. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        configureWindow()
        
        return true
    }
}

// MARK - private methods
private extension AppDelegate {
    
    func configureWindow(){
        let viewController = ViewController()
        window?.rootViewController = UINavigationController(rootViewController: viewController)
    }
    
}
