//
//  MainViewController.swift
//  RootControllerNavigation
//
//  Created by Stanislav Ostrovskiy on 12/5/17.
//  Copyright © 2017 Stanislav Ostrovskiy. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController { }

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        title = "Main Screen"
        
        let logoutButton = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(logout))
        navigationItem.setLeftBarButton(logoutButton, animated: true)
        
        let activityButton = UIBarButtonItem(title: "Activity", style: .plain, target: self, action: #selector(showActivityScreen))
        navigationItem.setRightBarButton(activityButton, animated: true)
    }
    
    @objc
    private func logout() {
        UserDefaults.standard.set(false, forKey: "LOGGED_IN")
        AppDelegate.shared.rootViewController.switchToLogout()
    }
    
    @objc
    func showActivityScreen(animated: Bool = true) {
        let activityViewController = ActivityViewController()
        navigationController?.pushViewController(activityViewController, animated: animated)
    }
}
