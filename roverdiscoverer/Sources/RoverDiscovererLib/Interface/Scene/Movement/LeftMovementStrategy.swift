//
//  LeftMovementStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class LeftMovementStrategy: MovementStrategy {
    func move(_ rover: Rover) {
        rover.turnLeft()
    }
}
