//
//  ExtView.swift
//  Helper
//
//  Created by Icon+ Gaenael on 09/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit

extension UIView {
    
    public func setRadius(_ rad: CGFloat){
        layer.masksToBounds = true
        layer.cornerRadius  = rad
    }
    
    public func setBorder(_ width: CGFloat, _ color: UIColor){
        layer.borderWidth  = width
        layer.borderColor  = color.cgColor
    }
    
    public func setShadow(){
        layer.masksToBounds = false
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.1, height: 0.4)
        layer.shadowOpacity = 0.1
    }
    
    public func addSeparator(margin: CGFloat = 0){
        let vw_separator = UIView(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
        vw_separator.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        self.addSubview(vw_separator)
        vw_separator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //text_field: Constraint
            vw_separator.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margin),
            self.trailingAnchor.constraint(equalTo: vw_separator.trailingAnchor, constant: margin),
            self.bottomAnchor.constraint(equalTo: vw_separator.bottomAnchor, constant: 0),
            vw_separator.heightAnchor.constraint(equalToConstant: 0.5)
        ])
    }
    
}
