//
//  NorthDirectionStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class NorthDirectionStrategy: DirectionStrategy {
    func turnLeft() -> Direction {
        return .west
    }
    
    func turnRight() -> Direction {
        return .east
    }
    
    func move(_ position: Position) -> Position {
        return Position(x:position.x, y:position.y + 1)
    }
}
