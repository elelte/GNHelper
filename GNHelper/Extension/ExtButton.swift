//
//  ExtButton.swift
//  Helper
//
//  Created by Icon+ Gaenael on 05/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit

extension UIButton{
    
    public func setImage(_ name: String, _ withTint: UIColor){
        tintColor = withTint
        setImage(UIImage(named: name), for: .normal)
    }
    
}
