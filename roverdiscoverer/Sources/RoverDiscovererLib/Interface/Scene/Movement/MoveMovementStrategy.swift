//
//  MoveMovementStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

internal class MoveMovementStrategy: MovementStrategy {
    func move(_ rover: Rover) {
        if rover.move() {
            debugPrint("Rover has move! -> \(rover.direction) \(rover.position)")
        }
    }
}
