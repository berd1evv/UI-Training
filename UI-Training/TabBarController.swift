//
//  ViewController.swift
//  UI-Training
//
//  Created by Eldiiar on 8/2/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        viewControllers = [
            createTabBarItem(tabBarTitle: "Crypto", tabBarImage: "house", viewController: FirstHomeViewController()),
            createTabBarItem(tabBarTitle: "Finances", tabBarImage: "banknote", viewController: SecondHomeViewController()),

        ]
    }
    
    func createTabBarItem(tabBarTitle: String, tabBarImage: String, viewController: UIViewController) -> UINavigationController {
        let navCont = UINavigationController(rootViewController: viewController)
        navCont.tabBarItem.title = tabBarTitle
        navCont.isNavigationBarHidden = true
        navCont.tabBarItem.image = UIImage(systemName: tabBarImage)
        return navCont
    }


}

