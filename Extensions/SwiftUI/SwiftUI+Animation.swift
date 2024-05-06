//
//  SwiftUI+Animation.swift
//  ""
//
//  Created by Himanshu on 21/03/2023.
//

import SwiftUI

func withExplicitAnimation<Result>(_ animated: Bool = true, animation: Animation? = .default, body: () throws -> Result) rethrows -> Result {
    if animated {
        return try withAnimation(animation, body)
    } else {
        return try body()
    }
}
