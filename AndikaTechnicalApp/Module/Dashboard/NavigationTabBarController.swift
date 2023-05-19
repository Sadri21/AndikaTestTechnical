//
//  NavigationTabBarController.swift
//  AndikaTechnicalApp
//
//  Created by mmbs on 19/05/23.
//

import UIKit

class NavigationTabBarController: UITabBarController {
    
    let button = UIButton.init(type: .custom)

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hideNavigationBar()
        navigationItem.backButtonTitle = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        button.setTitle("", for: .normal)
        button.setImage(UIImage(named: "claim-image"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.frame = CGRect(x: 100, y: 0, width: 50, height: 50)
        button.backgroundColor = UIColor.clear
        self.view.insertSubview(button, aboveSubview: self.tabBar)
        setupView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect.init(x: self.tabBar.center.x - 32, y: self.view.bounds.height - 100, width: 60, height: 54)
        button.layer.cornerRadius = 10
    }
    
    private func setupView() {
        
        self.tabBar.tintColor = UIColor(named: "pink-red")
        self.tabBar.backgroundColor = UIColor.systemGray6
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
        self.tabBar.layer.borderWidth = 1
        self.tabBar.layer.shadowOpacity = 0.1
        self.tabBar.layer.shadowColor = UIColor.gray.cgColor
        self.tabBar.layer.shadowRadius = 2
        self.tabBar.layer.shadowOffset = CGSize.init(width: 0, height: 0)
        
        let dashboardView = DashboardView()
        let articleView = ArticleView()
        let providerView = ProviderView()
        let profileView = ProfileView()
        let emptyMidleView = EmptyMidleView()
        
        dashboardView.tabBarItem = UITabBarItem.init(title: "Beranda", image: UIImage(named: "home-ico"), tag: 0)
        articleView.tabBarItem = UITabBarItem.init(title: "Simulasi", image: UIImage(named: "article-ico"), tag: 0)
        providerView.tabBarItem = UITabBarItem.init(title: "Monitoring", image: UIImage(named: "provider-ico"), tag: 0)
        profileView.tabBarItem = UITabBarItem.init(title: "Account", image: UIImage(named: "profile-ico"), tag: 0)
        emptyMidleView.tabBarItem = UITabBarItem.init(title: "", image: nil, tag: 0)
        
        self.selectedIndex = 0
        self.modalPresentationStyle = .fullScreen
        self.setViewControllers([dashboardView, articleView, emptyMidleView, providerView, profileView], animated: false)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
