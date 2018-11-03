//
//  Rover.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

public class Rover {
    
    var position: Position
    var direction: Direction
    let plateau: Plateau
    static var movements: [Movement] = []
    
    init(position: Position, direction: Direction, plateau: Plateau) {
        self.position = position
        self.direction = direction
        self.plateau = plateau
    }
    
    public func turnLeft() {
        self.direction = self.direction.operation().turnLeft()
    }
    
    public func turnRight() {
        self.direction = self.direction.operation().turnRight()
    }
    
    //moves the rover and returns true if has move!
    public func move() -> Bool {
        let newposition = self.direction.operation().move(self.position)
        if newposition <= plateau.topRightCorner && newposition >= plateau.origin {
            self.position = newposition
            return true
        }
        return false
    }
    
    public func getStatus() -> String {
        return("\(self.position.x) \(self.position.y) \(self.direction.rawValue)")
    }
}
