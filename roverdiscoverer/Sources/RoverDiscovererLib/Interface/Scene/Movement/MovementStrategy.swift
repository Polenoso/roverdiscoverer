//
//  MovementStrategy.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

protocol MovementStrategy : class {
    func move(_ rover: Rover)
}
