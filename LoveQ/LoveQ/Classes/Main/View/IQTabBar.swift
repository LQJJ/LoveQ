//
//  IQTabBar.swift
//  LoveQ
//
//  Created by czljcb on 16/9/2.
//  Copyright © 2016年 czljcb. All rights reserved.
//

import UIKit

class IQTabBar: UITabBar {
    
    
    // **********************************************************************************
    // MARK: - < 懒加载 >
    ///
    lazy var musicButton:UIButton = {
        var btn = UIButton(type:.custom)
        btn.setImage(UIImage(named: "music"), for: .normal)
        btn.addTarget(self, action: #selector(musicButtonCilck(btn:)), for: .touchUpInside)
        self.addSubview(btn)
        
        return btn
    }()
    lazy var musicBg:UIButton = {
        var btn = UIButton(type:.custom)
        btn.setImage(UIImage(named: "music_bg"), for: .normal)
        self.insertSubview(btn, at: 0)
        
        return btn
    }()
    
    
    // **********************************************************************************
    // MARK: - < 系统初次化 >
    ///
    override init(frame: CGRect) {
        super.init(frame: frame)
        //        let queue =  DispatchQueue(label: "tabbar")
        //        let queue =  DispatchQueue.global()
        let queue =  DispatchQueue.main
        queue.async {
            self.hiddenShadowImage()
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var x : CGFloat = 0.0
        let y : CGFloat = 0.0
        let width = frame.width / 5
        let height = frame.height
        for view in subviews {
            if view.isKind(of: NSClassFromString("UITabBarButton")!) {
                
                view.frame = CGRect(x: x, y: y, width: width, height: height)
                x = x + width
                if x == 2 * width {
                    x = x + width
                }
            }
        }
        musicBg.frame = CGRect(x: 1.75 * width, y:49 - width - 10 ,width: 1.5*width, height: 1.5*width)
        musicButton.frame = CGRect(x: 2 * width, y: 49 - width, width: width, height: width)
        
    }
    
    // **********************************************************************************
    // MARK: - < 私有方法 >
    ///
    private func hiddenShadowImage(){
        UIGraphicsBeginImageContext(frame.size);
        let context = UIGraphicsGetCurrentContext();
        context!.setFillColor(UIColor.clear.cgColor)
        context!.fill(bounds);
        let img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        backgroundImage = img
        shadowImage = img
        backgroundColor = UIColor(red: 236.0/256, green: 240.0/256, blue: 241.0/256, alpha: 1.0)
        
    }
    //    func musicButtonCilck(){ // 不是private 继承NSObjc 会默认加@objc
    @objc private func musicButtonCilck(btn : UIButton){
        print(#function)
    }
    
    
}
