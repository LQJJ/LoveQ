//
//  AppDelegate.swift
//  LoveQ
//
//  Created by czljcb on 16/8/28.
//  Copyright © 2016年 czljcb. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    // **********************************************************************************
    // MARK: - < 网络监听 >
    ///

    private func setReachabilityChangedNotification()
    {
        
        NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChangedNotification(noti:)), name: NSNotification.Name.reachabilityChanged, object: nil)
    }

    @objc private func reachabilityChangedNotification(noti:NSNotification){
        let status = Reachability.forInternetConnection()
        
        if status?.currentReachabilityStatus() == NotReachable {
            
            let alert  =  UIAlertController(title: "我疯移动数据已关闭", message: "打开我疯移动数据或使用无线据以往来访问数据", preferredStyle: .alert)
            let setAction = UIAlertAction(title: "设置", style: .default, handler: { (set:UIAlertAction) in
                
            })
            alert.addAction(setAction)
            let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: { (set:UIAlertAction) in
                
            })
            alert.addAction(cancelAction)
            window?.rootViewController?.present(alert, animated: true, completion: nil)
        }

    }
    
    // **********************************************************************************
    // MARK: - < RootViewController >
    ///
    private func setRootViewController(){
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainVC = IQTabBarController();
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()

    }
    
    // **********************************************************************************
    // MARK: - < AppDelegate >
    ///
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        setRootViewController()
        setReachabilityChangedNotification()
        
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

