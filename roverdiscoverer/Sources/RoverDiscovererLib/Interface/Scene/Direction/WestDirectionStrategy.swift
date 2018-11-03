//
//  WestDirectionStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class WestDirectionStrategy: DirectionStrategy {
    func turnLeft() -> Direction {
        return .south
    }
    
    func turnRight() -> Direction {
        return .north
    }
    
    func move(_ position: Position) -> Position {
        return Position(x:position.x - 1, y:position.y)
    }
    
    
}
