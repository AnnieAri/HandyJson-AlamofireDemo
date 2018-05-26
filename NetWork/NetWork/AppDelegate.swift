//	
//  ░░░░░░░░░░░░░░░░░░░░░░░░▄░░
//  ░░░░░░░░░▐█░░░░░░░░░░░▄▀▒▌░
//  ░░░░░░░░▐▀▒█░░░░░░░░▄▀▒▒▒▐
//  ░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐
//  ░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐
//  ░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌
//  ░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒
//  ░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐
//  ░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄
//  ░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒
//  ▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒
//  AppDelegate.swift 
//  NetWork 
// 
//  Created by Ari on 2018/5/26. 
//  Copyright © 2018年 阿狸. All rights reserved. 
//  github:https://github.com/AnnieAri
//  blog:https://www.jianshu.com/u/e80cddc74b7d
//  qq:6937523
//  学习这件事， 不在乎有没有人教你，最重要的是在于你自己有没有觉悟和恒心。
//  可能一个人说你不服气，两个人说你不服气，很多人在说的时候，你要反省，一定是自己出了一些问题。	
// 

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
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
    }


}

