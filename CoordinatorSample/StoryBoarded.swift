//
//  StoryBoarded.swift
//  CoordinatorSample
//
//  Created by Nykaa on 01/02/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import Foundation
import UIKit

protocol StoryBoarded {
    static func instantitate() -> Self
}

extension StoryBoarded where Self: UIViewController {
    static func instantitate() -> Self {
        let id = String(describing: self)
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
}
