//
//  MainTabBarVC.swift
//  Client-iOS
//
//  Created by Thisisme Hi on 2021/11/21.
//

import UIKit

class MainTabBarVC: UITabBarController {
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTabbar()
        
    }
    
    // MARK: - UI Setting
        func setTabbarClear() {
            self.tabBar.layer.borderWidth = 0.50
            self.tabBar.layer.borderColor = UIColor.clear.cgColor
            self.tabBar.clipsToBounds = true
            self.tabBar.backgroundImage = UIImage()
        }
    
    private func initTabbar() {
        
        // tabbar border
        self.tabBar.layer.borderColor = UIColor.clear.cgColor
        self.tabBar.layer.borderWidth = 0.0
        self.tabBar.clipsToBounds = true
        self.tabBar.setShadow(radius: 20, offset: CGSize(width: 0, height: -4), opacity: 0.08, color: .black)
        
        // background
        let backgroundframe = CGRect(x: self.tabBar.frame.origin.x, y: self.tabBar.frame.origin.y, width: self.tabBar.frame.width, height: self.tabBar.frame.height + 50)
        let backgroundView = UIView(frame: backgroundframe)
        backgroundView.backgroundColor = UIColor.clear
        
        // rounded view
        let roundedView = UIView(frame: CGRect(x: 0, y: 0, width: self.tabBar.frame.width, height: self.tabBar.frame.height + 50))
        roundedView.backgroundColor = UIColor.white
        roundedView.cornerRound(radius: 20)
        backgroundView.addSubview(roundedView)
        
        // set tabbar background image
        self.tabBar.backgroundImage = backgroundView.asImg
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundImage = backgroundView.asImg
            tabBarAppearance.backgroundColor = UIColor.clear
            tabBarAppearance.backgroundEffect = .none
            self.tabBar.standardAppearance = tabBarAppearance
            
            if #available(iOS 15.0, *) {
                self.tabBar.scrollEdgeAppearance = tabBarAppearance
            }
        }
    }
}
