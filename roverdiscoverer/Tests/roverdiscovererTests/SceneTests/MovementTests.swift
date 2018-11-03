//
//  MovementTests.swift
//  roverdiscovererTests
//
//  Created by Aitor Pagán on 03/11/2018.
//

import XCTest
@testable import RoverDiscovererLib

class MovementTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGivenRoverFacingNorthWhenMovementLeftRoverShouldFaceWest() {
        //Given
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        let origin = Position(x: 1, y: 4)
        let rover = Rover(position: origin, direction: .north, plateau: plateau)
        let movement = Movement.left
        
        //When
        movement.operate().move(rover)
        
        //Then
        XCTAssertEqual(rover.direction, .west)
    }
    
    func testGivenRoverFacingNorthWhenMovementRightRoverShouldFaceEast() {
        //Given
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        let origin = Position(x: 1, y: 4)
        let rover = Rover(position: origin, direction: .north, plateau: plateau)
        let movement = Movement.right
        
        //When
        movement.operate().move(rover)
        
        //Then
        XCTAssertEqual(rover.direction, .east)
    }
    
    func testGivenRoverFacingNorthWhenMovementMoveRoverShouldMoveOnY() {
        //Given
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        let origin = Position(x: 1, y: 2)
        let rover = Rover(position: origin, direction: .north, plateau: plateau)
        let movement = Movement.move
        
        //When
        movement.operate().move(rover)
        
        //Then
        XCTAssertEqual(rover.position.x, origin.x)
        XCTAssertEqual(rover.position.y, origin.y + 1)
    }

}
