//
//  Plateau.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

struct Plateau {
    let origin: Position = Position(x:0, y:0)
    let topRightCorner: Position
    
    init(topRightCorner: Position) {
        self.topRightCorner = topRightCorner
    }
}


extension Plateau {
    init(with dictionary: [String : Any]) throws {
        try self.topRightCorner = Position(with: dictionary)
    }
}
