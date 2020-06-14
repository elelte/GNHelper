//
//  Global.swift
//  Helper
//
//  Created by Icon+ Gaenael on 04/05/20.
//  Copyright © 2020 Sibertama Indonesia. All rights reserved.
//

import UIKit
import SafariServices

public struct GScreen {
    public static let bounds  = UIScreen.main.bounds
    public static let width   = bounds.size.width
    public static let height  = bounds.size.height
}

public struct GController {
    public static func getFromStoryboard(_ sbname: String, _ nib: String)->UIViewController{
        let sb = UIStoryboard.init(name: sbname, bundle: nil)
        return sb.instantiateViewController(withIdentifier: nib)
    }
}

public struct GBASE_VIEWCONTROLLER {
    
    public static func openBrowser(url: String) -> UIViewController{
        return SFSafariViewController(url: URL(string: url)!)
    }
    
}

public struct GAlert{
    public static func set(title:String, msg:String, style:UIAlertController.Style)->UIAlertController{
        let alert = UIAlertController(title: title, message: msg, preferredStyle: style)
        return alert
    }
    
    public static func addAction(title:String, style:UIAlertAction.Style, completion: ((UIAlertAction) -> Void)!, alert:UIAlertController){
        let action = UIAlertAction(title: title, style: style, handler: completion)
        alert.addAction(action)
    }
}

public struct GROOT{
    
    public static func changeRoot(
        _ nav: UINavigationController,
        _ vc: UIViewController){
        nav.setViewControllers([vc], animated: true)
    }
    
}

public struct GDates {
    public static func convertDateCurrent(date: String, dfconvert: String) -> String{
        let df24 = getDF24()
        if let convertedDate = df24.date(from: date){
            df24.dateFormat = dfconvert //this is what you want to convert format
            df24.locale   = Locale(identifier: "en_US")
            let timeStamp = df24.string(from: convertedDate)
            
            return timeStamp
        }
        else{
            let df12 = getDF12()
            let dts  = df12.date(from: date)
            df24.dateFormat = dfconvert//this is what you want to convert format
            df24.locale   = Locale(identifier: "en_US")
            let timeStamp = df24.string(from: dts!)
            
            return timeStamp
        }
    }
    private static func getDF24() -> DateFormatter{
        let df      = DateFormatter()
        df.locale   = Locale(identifier: "en_US") // edited
        df.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        return df
    }
    
    private static func getDF12() -> DateFormatter{
        let df        = DateFormatter()
        df.locale     = Locale(identifier: "UTC")
        df.timeZone   = TimeZone(abbreviation: "UTC")
        df.dateFormat = "yyyy-MM-dd hh:mm:ss a Z"
        return df
    }
    
    public static func DFormat(date: String, dfdefault: String, dfconvert: String)->String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.locale   = Locale(identifier: "en_US")
        dateFormatterGet.dateFormat = dfdefault
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.locale   = Locale(identifier: "en_US")
        dateFormatterPrint.dateFormat = dfconvert
        
        let date: NSDate? = dateFormatterGet.date(from: date) as NSDate?
        return dateFormatterPrint.string(from: date! as Date)
    }
    
    public static func DateRange(dated: String) -> Int{
        let arrstr = dated.components(separatedBy: " ")
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.locale = Locale(identifier: "en_US")
        dateFormatterGet.dateFormat = "yyyy-MM-dd"

        let startDateStr = dateFormatterGet.string(from: Date())
        let startDate = dateFormatterGet.date(from: startDateStr)! as Date
        let endDate   = dateFormatterGet.date(from: arrstr[0])! as Date
        
        let cal = NSCalendar.current
        let components = cal.dateComponents([.day], from: startDate, to: endDate)
        return components.day!
    }
    
    public static func DateToday() -> String{
        let dateFormatterGet    = DateFormatter()
        dateFormatterGet.locale = Locale(identifier: "en_US")
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        let today = dateFormatterGet.string(from: Date())
        return "\(today)"
    }
    
    public static func DateTommorow() -> String{
        let today = Date()
        let d = Calendar.current.date(byAdding: .day, value: -1, to: today)!
        
        let dateFormatterGet    = DateFormatter()
        dateFormatterGet.locale = Locale(identifier: "en_US")
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        let tommorow = dateFormatterGet.string(from: d)
        return "\(tommorow)"
    }
}
