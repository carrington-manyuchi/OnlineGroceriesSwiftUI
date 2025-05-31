//
//  UIKItExtension.swift
//  OnlineGroceriesSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/31.
//

import Foundation

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
//    
//    func stringDateToDate(format: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZ") -> Date? {
//        let dataFormat = DateFormatter()
//        dataFormat.dateFormat = format
//        return dataFormat.date(from: self)
//    }
//    
//    func stringDateChangeFormat(format: String, newFormat: String ) -> String {
//        let dataFormat = DateFormatter()
//        dataFormat.dateFormat = format
//        if let dt = dataFormat.date(from: self) {
//            dataFormat.dateFormat = newFormat
//            return dataFormat.string(from: dt)
//        }else{
//            return ""
//        }
//    }
}

//extension Date {
//    func displayDate(format: String, addMinTime:  Int = 0) -> String {
//        let dataFormat = DateFormatter()
//        dataFormat.dateFormat = format
//        let date = self.addingTimeInterval(TimeInterval(60 * addMinTime))
//        return dataFormat.string(from: date)
//    }
//}
