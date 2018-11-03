//
//  DirectionStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

protocol DirectionStrategy : class {
    func turnLeft() -> Direction
    func turnRight() -> Direction
    func move(_ position: Position) -> Position
}
