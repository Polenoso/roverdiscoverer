//
//  RoverTests.swift
//  roverdiscovererTests
//
//  Created by Aitor Pagán on 03/11/2018.
//

import XCTest
@testable import RoverDiscovererLib

class RoverTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRoverInitializer() {
        //Given
        var rover: Rover
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        
        //When
        rover = Rover(position: Position(x: 1, y: 1), direction: .east, plateau: plateau)
        
        //Then
        XCTAssertEqual(rover.direction, .east)
        XCTAssertEqual(rover.position, Position(x: 1, y: 1))
        XCTAssertEqual(rover.plateau.topRightCorner, plateau.topRightCorner)
    }
    
    func testGivenRoverFacingNorthWhenTurnLeftShouldFaceWest() {
        //Given
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        let rover = Rover(position: Position(x: 1, y: 1), direction: .north, plateau: plateau)

        //When
        rover.turnLeft()
        
        //Then
        XCTAssertEqual(rover.direction, .west)
    }
    
    func testGivenRoverFacingNorthWhenMoveShouldAdvanceY() {
        //Given
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        let origin = Position(x: 1, y: 1)
        let rover = Rover(position: origin, direction: .north, plateau: plateau)
        
        //When
        let didMove = rover.move()
        
        //Then
        XCTAssertEqual(rover.position.x, origin.x)
        XCTAssertEqual(rover.position.y, origin.y + 1)
        XCTAssertTrue(didMove, "Rover should move if movement is inside Plateau")
    }
    
    func testGivenRoverFacingNorthWhenMoveOutOfBoundsRoverShouldNotMove() {
        //Given
        let plateau = Plateau(topRightCorner: Position(x: 4, y: 4))
        let origin = Position(x: 1, y: 4)
        let rover = Rover(position: origin, direction: .north, plateau: plateau)
        
        //When
        let didMove = rover.move()
        
        //Then
        XCTAssertEqual(rover.position, origin)
        XCTAssertFalse(didMove, "Rover should not move if movement is outside Plateau")
    }

}
