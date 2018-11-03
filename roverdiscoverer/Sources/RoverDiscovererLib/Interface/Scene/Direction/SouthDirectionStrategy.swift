//
//  SouthDirectionStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class SouthDirectionStrategy: DirectionStrategy {
    func turnLeft() -> Direction {
        return .east
    }
    
    func turnRight() -> Direction {
        return .west
    }
    
    func move(_ position: Position) -> Position {
        return Position(x:position.x, y:position.y - 1)
    }
    
}
