//
//  MainTabBarController.swift
//  CoordinatorSample
//
//  Created by Nykaa on 01/02/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    let main = MainCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        main.start()
        viewControllers = [main.navigationController]
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
