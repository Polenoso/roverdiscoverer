//
//  Direction.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

public enum Direction: String {
    case north = "N"
    case south = "S"
    case east = "E"
    case west = "W"
    
    func operation() -> DirectionStrategy {
        switch self {
        case .north:
            return NorthDirectionStrategy()
        case .south:
            return SouthDirectionStrategy()
        case .east:
            return EastDirectionStrategy()
        case .west:
            return WestDirectionStrategy()
        }
    }
}
