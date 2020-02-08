//
//  ViewController.swift
//  CoordinatorSample
//
//  Created by Nykaa on 01/02/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoryBoarded {
    //weak var coordinator: MainCoordinator?

    var buyAction: (() -> Void)?
    var profileAction: (() -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buyNowAction(_ sender: Any) {
        //coordinator?.buySuscription(to: 2)
        buyAction?()
    }
    
    
    @IBAction func profileAction(_ sender: Any) {
        //coordinator?.viewProfile()
        profileAction?()
    }
}

