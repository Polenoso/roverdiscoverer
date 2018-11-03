//
//  RightMovementStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class RightMovementStrategy: MovementStrategy {
    func move(_ rover: Rover) {
        rover.turnRight()
    }
}
