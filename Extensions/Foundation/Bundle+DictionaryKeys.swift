//
//  Bundle+DictionaryKeys.swift
//  ""
//
//  Created by Himanshu on 06/06/2022.
//

import Foundation

extension Bundle {
    var appBuild: String {
        object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }
    
    var appVersion: String {
        object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? ""
    }
}
