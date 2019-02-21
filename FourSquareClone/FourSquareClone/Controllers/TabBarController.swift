//
//  TabBarController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        let frontVC = FrontViewController()
        frontVC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "search"), tag: 0)
        
        let listVC = ListViewController()
        listVC.tabBarItem = UITabBarItem(title: "List", image: UIImage(named: "list"), tag: 1)
        
        let historyVC = HistoryViewController()
        historyVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "history"), tag: 2)
        
        let tabBarLists = [frontVC, listVC, historyVC]
        viewControllers = tabBarLists.map(UINavigationController.init)
    }
    
}
