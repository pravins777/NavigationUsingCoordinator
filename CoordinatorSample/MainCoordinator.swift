//
//  MainCoordinator.swift
//  CoordinatorSample
//
//  Created by Nykaa on 01/02/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childControllers =  [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        
        let mainVC = ViewController.instantitate()
        mainVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        //mainVC.coordinator = self
        mainVC.buyAction = { [weak self] in
            self?.buySuscription(to: 2)
        }
        mainVC.profileAction = { [weak self] in
            self?.viewProfile()
        }
        navigationController.pushViewController(mainVC, animated: true)
    }
    
    func buySuscription(to productType:Int) {
        let buyVC = BuyViewController.instantitate()
        buyVC.selectedProduct = productType
        buyVC.coordinator = self
        navigationController.pushViewController(buyVC, animated: true)
    }
    
    func viewProfile() {
        let profileVC = ProfileViewController.instantitate()
        profileVC.coordinator = self
        navigationController.pushViewController(profileVC, animated: true)
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childControllers.enumerated() {
            if coordinator === child {
                childControllers.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromVC = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromVC) {
            return
        }
        
        if let buyVC = fromVC as? BuyViewController {
            childDidFinish(buyVC.coordinator)
        }
    }
}
