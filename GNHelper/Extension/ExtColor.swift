//
//  ExtColor.swift
//  Helper
//
//  Created by Icon+ Gaenael on 26/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit

extension UIColor{
    
    public func UIColorFromRGBS(rgbValue: UInt)->UIColor{
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}
