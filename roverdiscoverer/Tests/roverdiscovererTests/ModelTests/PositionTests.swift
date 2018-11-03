//
//  PositionTests.swift
//  roverdiscovererTests
//
//  Created by Aitor Pagán on 03/11/2018.
//

import XCTest
@testable import RoverDiscovererLib

class PositionTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPositionInitializer() {
        //Given
        var position : Position
        
        //When
        position = Position(x: 4, y: 4)
        
        //Then
        XCTAssertEqual(position.x, 4)
        XCTAssertEqual(position.y, 4)
    }
    
    func testPositionDictionaryIntializer() {
        //Given
        var position : Position?
        
        //When
        do {
            guard let dict = try "{\"x\" : 4, \"y\" : 4}".toJsonDictionary() else {
                throw RoverDiscoverer.Error.invalidJson
            }
            position = try Position(with: dict)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
        
        //Then
        XCTAssertEqual(position?.x, 4)
        XCTAssertEqual(position?.y, 4)
    }

}
