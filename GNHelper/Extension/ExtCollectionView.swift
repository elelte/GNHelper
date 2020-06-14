//
//  ExtCollectionView.swift
//  Helper
//
//  Created by Icon+ Gaenael on 05/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit

extension UICollectionView{
    
    public func registerNib(_ nib: String, alias: String){
        register(UINib(nibName: nib, bundle: nil), forCellWithReuseIdentifier: alias)
    }
    
}
