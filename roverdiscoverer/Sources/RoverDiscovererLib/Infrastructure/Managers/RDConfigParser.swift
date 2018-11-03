//
//  RDConfigParser.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

public final class RDConfigParser {
    
    public static func parseConfiguration(configJson: [String : Any]) throws -> Rover {
        
        do {
            guard let plateauDict = configJson["topRightCorner"] as? [String: Any],
            let roverPositionDict = configJson["roverPosition"] as? [String: Any],
            let roverDirectionString = configJson["roverDirection"] as? String,
            let roverDirection = Direction(rawValue: roverDirectionString),
            let movementsString = configJson["movements"] as? String
            else {
                throw RoverDiscoverer.Error.invalidJson
            }
            let plateau = try Plateau(with: plateauDict)
            let roverPosition = try Position(with: roverPositionDict)
            
            //initialize rover
            let rover: Rover = try Rover(position: roverPosition, direction: roverDirection, plateau: plateau)
            
            //Parse movements
            let movements: [String] = movementsString.map { (c) in
                return "\(c)"
            }
            Rover.movements = try movements.map{(mov) in
                guard let movement = Movement(rawValue: mov) else { throw RoverDiscoverer.Error.invalidMovement }
                return movement
            }
            
            return rover
            
        } catch let error {
            debugPrint(error.localizedDescription)
            throw error
        }
    }
}
