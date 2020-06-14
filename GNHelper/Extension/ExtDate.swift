//
//  ExtDate.swift
//  Helper
//
//  Created by Icon+ Gaenael on 22/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit

class ExtDate: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

extension String{
    
    public func formatDate(_ fformat: String, _ tformat: String) -> String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = fformat

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = tformat

        let date: Date? = dateFormatterGet.date(from: self)
        return dateFormatterPrint.string(from: date!)
    }
    
}
