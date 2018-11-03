//
//  DirectionTests.swift
//  roverdiscovererTests
//
//  Created by Aitor Pagán on 03/11/2018.
//

import XCTest
@testable import RoverDiscovererLib

class DirectionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGivenEastDirectionWhenTurnLeftShouldDisplayNorth() {
        //Given
        var direction = Direction.east
        
        //When
        direction = direction.operation().turnLeft()
        
        //Then
        XCTAssertEqual(direction, .north)
    }
    
    func testGivenNorthDirectionWhenTurnLeftShouldDisplayWest() {
        //Given
        var direction = Direction.north
        
        //When
        direction = direction.operation().turnLeft()
        
        //Then
        XCTAssertEqual(direction, .west)
    }
    
    func testGivenWestDirectionWhenTurnLeftShouldDisplaySouth() {
        //Given
        var direction = Direction.west
        
        //When
        direction = direction.operation().turnLeft()
        
        //Then
        XCTAssertEqual(direction, .south)
    }
    
    func testGivenSouthDirectionWhenTurnLeftShouldDisplayEast() {
        //Given
        var direction = Direction.south
        
        //When
        direction = direction.operation().turnLeft()
        
        //Then
        XCTAssertEqual(direction, .east)
    }

    func testGivenEastDirectionWhenTurnRightShouldDisplaySouth() {
        //Given
        var direction = Direction.east
        
        //When
        direction = direction.operation().turnRight()
        
        //Then
        XCTAssertEqual(direction, .south)
    }
    
    func testGivenSouthDirectionWhenTurnRightShouldDisplayWest() {
        //Given
        var direction = Direction.south
        
        //When
        direction = direction.operation().turnRight()
        
        //Then
        XCTAssertEqual(direction, .west)
    }
    
    func testGivenWestDirectionWhenTurnRightShouldDisplayNorth() {
        //Given
        var direction = Direction.west
        
        //When
        direction = direction.operation().turnRight()
        
        //Then
        XCTAssertEqual(direction, .north)
    }
    
    func testGivenNorthDirectionWhenTurnRightShouldDisplayEast() {
        //Given
        var direction = Direction.north
        
        //When
        direction = direction.operation().turnRight()
        
        //Then
        XCTAssertEqual(direction, .east)
    }

}
