//
//  MainView.swift
//  Arduz.kz
//
//  Created by bakebrlk on 23.05.2023.
//

import UIKit
import SnapKit

class MainView: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = .lightGray
        UITabBar.appearance().isTranslucent = false
        tabBar.tintColor = .yellow
        
        setupViewControllers()
    }

    func setupViewControllers() {
        viewControllers = [
            wrapInNavigationController(with: WelcomeView(), tabTitle: "Products", tabImage: UIImage(systemName: "giftcard.fill")!),
            wrapInNavigationController(with: ViewController(), tabTitle: "Basket", tabImage: UIImage(systemName: "cart")!)
        ]
    }

    func wrapInNavigationController(with rootViewController: UIViewController,
                                    tabTitle: String,
                                    tabImage: UIImage) -> UINavigationController
    {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = tabTitle
        navigationController.tabBarItem.image = tabImage
        navigationController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationController?.title = tabTitle
        return navigationController
    }
    
   
}

class MyTabbarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = .lightGray
        UITabBar.appearance().isTranslucent = false
        tabBar.tintColor = .yellow
        setupViewControllers()
    }
    

    func setupViewControllers() {
        viewControllers = [
            wrapInNavigationController(with: WelcomeView(), tabTitle: "Search", tabImage: UIImage(systemName: "magnifyingglass")!),
            wrapInNavigationController(with: ViewController(), tabTitle: "Home", tabImage: UIImage(systemName: "house")!),
            wrapInNavigationController(with: ViewController(), tabTitle: "Profile", tabImage: UIImage(systemName: "person")!),
        ]
    }

    func wrapInNavigationController(with rootViewController: UIViewController,
                                    tabTitle: String,
                                    tabImage: UIImage) -> UINavigationController
    {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = tabTitle
        navigationController.tabBarItem.image = tabImage
        navigationController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationController?.title = tabTitle
        return navigationController
    }
}
