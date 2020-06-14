//
//  ExtViewController.swift
//  Helper
//
//  Created by Icon+ Gaenael on 06/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit

extension UIViewController{
    
    public func withNav(_ navBar: Bool)->UINavigationController{
        let nav                   = UINavigationController()
        nav.viewControllers       = [self]
        nav.isNavigationBarHidden = navBar
        return nav
    }
    
}
