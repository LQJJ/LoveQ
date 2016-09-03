//
//  IQTabBarController.swift
//  LoveQ
//
//  Created by czljcb on 16/8/28.
//  Copyright © 2016年 czljcb. All rights reserved.
//

import UIKit

class IQTabBarController: UITabBarController {
    
    
    // **********************************************************************************
    // MARK: - < 系统初次化 >
    ///
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        prepareChildVC()
        setTabBarTitleColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    // **********************************************************************************
    // MARK: - < 私有方法 >
    ///
    private func prepareChildVC(){
        setValue(IQTabBar(), forKey: "tabBar")

        let programmeVC = IQNavigationController(rootViewController: UIViewController())
        programmeVC.tabBarItem.image = UIImage(named: "tab_music")?.withRenderingMode(.alwaysOriginal)
        programmeVC.tabBarItem.selectedImage = UIImage(named: "tab_music_pre")?.withRenderingMode(.alwaysOriginal)
        programmeVC.tabBarItem.badgeValue = "99"
        programmeVC.tabBarItem.badgeColor = UIColor.orange
        programmeVC.tabBarItem.setBadgeTextAttributes([NSForegroundColorAttributeName : UIColor.red], for: .normal)
        programmeVC.tabBarItem.setBadgeTextAttributes([NSForegroundColorAttributeName : UIColor.green], for: .selected)
        
        programmeVC.tabBarItem.title = "节目"
        addChildViewController(programmeVC);
        
        let amusementVC = IQNavigationController(rootViewController: UIViewController())
        amusementVC.tabBarItem.image = UIImage(named: "tab_music")?.withRenderingMode(.alwaysOriginal)
        amusementVC.tabBarItem.selectedImage = UIImage(named: "tab_music_pre")?.withRenderingMode(.alwaysOriginal)
        
        amusementVC.tabBarItem.title = "娱乐"
        addChildViewController(amusementVC);
        
        let musieVC = IQNavigationController(rootViewController: IQMusieViewController())
        musieVC.tabBarItem.image = UIImage(named: "tab_music")?.withRenderingMode(.alwaysOriginal)
        musieVC.tabBarItem.selectedImage = UIImage(named: "tab_music_pre")?.withRenderingMode(.alwaysOriginal)
        
        musieVC.tabBarItem.title = "音乐"
        addChildViewController(musieVC);
        
        
        //        let homeVC1 = IQNavigationController(rootViewController: UIViewController())
        //        homeVC1.tabBarItem.image = UIImage(named: "音乐")?.withRenderingMode(.alwaysOriginal)
        //        homeVC1.tabBarItem.selectedImage = UIImage(named: "音乐click")?.withRenderingMode(.alwaysOriginal)
        //
        //        homeVC1.tabBarItem.title = "dd"
        //        addChildViewController(homeVC1);
        
        let profileVC = IQNavigationController(rootViewController: UIViewController())
        profileVC.tabBarItem.image = UIImage(named: "tab_fm")?.withRenderingMode(.alwaysOriginal)
        profileVC.tabBarItem.selectedImage = UIImage(named: "tab_fm_pre")?.withRenderingMode(.alwaysOriginal)
        
        profileVC.tabBarItem.title = "我的"
        addChildViewController(profileVC);
        
    }
    
    private func setTabBarTitleColor(){
        let  tabBarItem =  UITabBarItem.appearance(whenContainedInInstancesOf: [IQTabBarController.self])
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.lightGray], for: .normal)
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.red], for: .selected)
        
    }
}
