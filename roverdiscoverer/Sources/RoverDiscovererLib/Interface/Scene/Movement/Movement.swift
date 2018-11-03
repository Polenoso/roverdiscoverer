//
//  Movement.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

public enum Movement : String {
    case left = "L"
    case right = "R"
    case move = "M"
    
    func operate() -> MovementStrategy {
        switch self {
        case .left:
            return LeftMovementStrategy()
        case .right:
            return RightMovementStrategy()
        case .move:
            return MoveMovementStrategy()
        }
    }
}
