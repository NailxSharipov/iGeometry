//
//  IntPoint+Math.swift
//  iGeometry
//
//  Created by Nail Sharipov on 04/10/2019.
//

import Foundation

public extension IntPoint {
    
    static func +(left: IntPoint, right: IntPoint) -> IntPoint {
        return IntPoint(x: left.x + right.x, y: left.y + right.y)
    }

    static func -(left: IntPoint, right: IntPoint) -> IntPoint {
        return IntPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    func scalarMultiply(point: IntPoint) -> Int64 {
        return self.x * point.x + point.y * self.y
    }
    
    func normal(iGeom: IntGeom) -> IntPoint {
        let p = iGeom.float(point: self)
        let l = sqrt(p.x * p.x + p.y * p.y)
        let k = 1 / l
        let x = k * p.x
        let y = k * p.y
        
        return iGeom.int(point: Point(x: x, y: y))
    }
    
    func sqrDistance(point: IntPoint) -> Int64 {
        let dx = point.x - self.x
        let dy = point.y - self.y

        return dx * dx + dy * dy
    }
}