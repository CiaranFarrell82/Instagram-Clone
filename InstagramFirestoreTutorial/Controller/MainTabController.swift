//
//  MainTabController.swift
//  InstagramFirestoreTutorial
//
//  Created by Ciaran Farrell on 06/11/2020.
//  Copyright © 2020 Ciaran Farrell. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    // MARK: - Helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white
        
        let feed = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selctedImage: #imageLiteral(resourceName: "home_selected"), rootViewController: FeedController())
        
        let search = SearchController()
        
        let imageSelector = ImageSelectorController()
        
        let notification = NotificationController()
        
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notification, profile]
    }
    
    func templateNavigationController(unselectedImage: UIImage, selctedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selctedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
    
}
    

