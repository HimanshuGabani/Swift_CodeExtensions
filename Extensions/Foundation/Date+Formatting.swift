//
//  Date+Formatting.swift
//  ""
//
//  Created by Himanshu on 05/09/2022.
//

import Foundation
import SwiftDate

extension Date {
    func toRecentMessageDateDescription() -> String {
        guard let difference = difference(in: .day, from: Date()) else {
            return toString(.date(.medium))
        }
        
        switch difference {
        case 0:
            return self.in(region: .current).toString(.time(.short))
        case 1...6:
            return self.in(region: .current).toString(.custom("EEE"))
        default:
            return self.in(region: .current).toString(.date(.medium))
        }
    }
    
    
    func convertToString(formate:""DateFormates) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "\(Locale.current.identifier)_POSIX")
        formatter.dateFormat = formate.rawValue
        return formatter.string(from: self)
        
    }
    
    
}
