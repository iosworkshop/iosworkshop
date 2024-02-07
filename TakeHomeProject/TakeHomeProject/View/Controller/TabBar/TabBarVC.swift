//
//  TabBarVC.swift
//  TakeHomeProject
//
//  Created by Sarthak Srivastava1 on 24/01/24.
//

import UIKit

class TabBarVC: UITabBarController, UITabBarControllerDelegate {
    
    var selectedIndex1 = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.tintColor = UIColor(red: 51/255.0, green: 51/255.0, blue: 51/255.0, alpha: 1.0)
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.white
        
        self.selectedIndex = selectedIndex1
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        print("tabBar Selected...")
        return true
    }
}
