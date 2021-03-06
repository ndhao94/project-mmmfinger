//
//  Utils.swift
//  follow path
//
//  Created by Admin on 11/27/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

import Foundation
import SpriteKit

extension CGPoint{
    func add(other: CGPoint) -> CGPoint{
        return CGPoint(x: self.x + other.x, y: self.y + other.y)
    }
    
    func add(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: self.x + x, y: self.y + y)
    }
    
    func subtract(other: CGPoint) -> CGVector {
        return CGVector(dx: self.x - other.x, dy: self.y - other.y)
    }
    
    func add(vector: CGVector) -> CGPoint {
        return CGPoint(x: self.x + vector.dx, y: self.y + vector.dy)
    }
    
    func distance(other: CGPoint) -> CGFloat{
        let dx = self.x - other.x
        let dy = self.y - other.y
        return sqrt(dx * dx + dy*dy)
    }

}

extension SKAction {
    static func moveToBottom (position: CGPoint, speed: CGFloat) -> SKAction {
        let distance = position.y
        let time = distance / speed
        return SKAction.moveTo(y: 0, duration: TimeInterval(time))
    }
}
