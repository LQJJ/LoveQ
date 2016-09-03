//
//  IQTabBarController.swift
//  LoveQ
//
//  Created by czljcb on 16/8/28.
//  Copyright © 2016年 czljcb. All rights reserved.
//

import UIKit

class IQTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setValue(IQTabBar(), forKey: "tabBar")
        prepareChildVC()
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    private func prepareChildVC(){
        
        let programmeVC = IQNavigationController(rootViewController: UIViewController())
        programmeVC.tabBarItem.image = UIImage(named: "音乐")?.withRenderingMode(.alwaysOriginal)
        programmeVC.tabBarItem.selectedImage = UIImage(named: "音乐click")?.withRenderingMode(.alwaysOriginal)
        programmeVC.tabBarItem.badgeValue = "99"
        programmeVC.tabBarItem.badgeColor = UIColor.orange
        programmeVC.tabBarItem.setBadgeTextAttributes([NSForegroundColorAttributeName : UIColor.red], for: .normal)
        programmeVC.tabBarItem.setBadgeTextAttributes([NSForegroundColorAttributeName : UIColor.green], for: .selected)

        programmeVC.tabBarItem.title = "节目"
        addChildViewController(programmeVC);
        
        let amusementVC = IQNavigationController(rootViewController: UIViewController())
        amusementVC.tabBarItem.image = UIImage(named: "音乐")?.withRenderingMode(.alwaysOriginal)
        amusementVC.tabBarItem.selectedImage = UIImage(named: "音乐click")?.withRenderingMode(.alwaysOriginal)

        amusementVC.tabBarItem.title = "娱乐"
        addChildViewController(amusementVC);
        
        let musieVC = IQNavigationController(rootViewController: IQMusieViewController())
        musieVC.tabBarItem.image = UIImage(named: "音乐")?.withRenderingMode(.alwaysOriginal)
        musieVC.tabBarItem.selectedImage = UIImage(named: "音乐click")?.withRenderingMode(.alwaysOriginal)

        musieVC.tabBarItem.title = "音乐"
        addChildViewController(musieVC);
        
        
//        let homeVC1 = IQNavigationController(rootViewController: UIViewController())
//        homeVC1.tabBarItem.image = UIImage(named: "音乐")?.withRenderingMode(.alwaysOriginal)
//        homeVC1.tabBarItem.selectedImage = UIImage(named: "音乐click")?.withRenderingMode(.alwaysOriginal)
//
//        homeVC1.tabBarItem.title = "dd"
//        addChildViewController(homeVC1);
        
        let profileVC = IQNavigationController(rootViewController: UIViewController())
        profileVC.tabBarItem.image = UIImage(named: "gb")?.withRenderingMode(.alwaysOriginal)
        profileVC.tabBarItem.selectedImage = UIImage(named: "gbclick")?.withRenderingMode(.alwaysOriginal)

        profileVC.tabBarItem.title = "我的"
        addChildViewController(profileVC);
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
