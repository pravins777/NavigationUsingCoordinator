//
//  Coordinator.swift
//  CoordinatorSample
//
//  Created by Nykaa on 01/02/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childControllers: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start() 
}
