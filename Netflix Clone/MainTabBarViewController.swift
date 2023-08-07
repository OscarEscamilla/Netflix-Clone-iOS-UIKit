//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Oscar Escamilla on 07/08/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        // Do any additional setup after loading the view.
        
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        let upcomingViewController = UINavigationController(rootViewController: UpcomingViewController())
        let downloadsViewController = UINavigationController(rootViewController: DownloadsViewController())
        
        
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        searchViewController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        upcomingViewController.tabBarItem.image = UIImage(systemName: "play.circle")
        downloadsViewController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")

        homeViewController.title = "Home"
        searchViewController.title = "Search"
        upcomingViewController.title = "Upcoming"
        downloadsViewController.title = "Downloads"
        
        
        tabBar.tintColor = .label
        
        
        
        setViewControllers([homeViewController, searchViewController, upcomingViewController, downloadsViewController], animated: true)
    }


}

