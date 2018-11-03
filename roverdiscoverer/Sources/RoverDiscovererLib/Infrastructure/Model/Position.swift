//
//  Position.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

struct Position {
    let x:Int;
    let y:Int;
}

extension Position: Comparable {
    static func < (lhs: Position, rhs: Position) -> Bool {
        return lhs.x < rhs.x && lhs.y < rhs.y
    }
    
    public static func <= (lhs: Position, rhs: Position) -> Bool {
        return lhs.x <= rhs.x && lhs.y <= rhs.y
    }
    
    public static func >= (lhs: Position, rhs: Position) -> Bool {
        return lhs.x >= rhs.x && lhs.y >= rhs.y
    }
    
    public static func > (lhs: Position, rhs: Position) -> Bool {
        return lhs.x > rhs.x && lhs.y > rhs.y
    }
}

extension Position: Equatable {
    public static func == (lhs: Position, rhs: Position) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

extension Position {
    init(with dictionary: [String : Any]) throws {
        guard let x = dictionary["x"] as? Int,
            let y = dictionary["y"] as? Int
            else { throw RoverDiscoverer.Error.invalidJson }
        self.x = x
        self.y = y
    }
}
