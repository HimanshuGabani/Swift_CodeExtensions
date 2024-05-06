//
//  CGPoint+Distance.swift
//  ""
//
//  Created by Himanshu on 11/08/2022.
//

import CoreGraphics

extension CGPoint {
    func distance(to point: CGPoint) -> CGFloat {
        abs(hypot(x - point.x, y - point.y))
    }
}
