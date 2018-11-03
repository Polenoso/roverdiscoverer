//
//  EastDirectionStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class EastDirectionStrategy: DirectionStrategy {
    func turnLeft() -> Direction {
        return .north
    }
    
    func turnRight() -> Direction {
        return .south
    }
    
    func move(_ position: Position) -> Position {
        return Position(x:position.x + 1, y:position.y)
    }
    
    
}
