//
//  PlateauTests.swift
//  roverdiscovererTests
//
//  Created by Aitor Pagán on 03/11/2018.
//

import XCTest
@testable import RoverDiscovererLib

class PlateauTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPlateauInitializer() {
        //Given
        var plateau: Plateau
        
        //When
        plateau = Plateau(topRightCorner: Position(x: 5, y: 5))
        
        XCTAssertEqual(plateau.origin, Position(x:0, y:0))
        XCTAssertEqual(plateau.topRightCorner, Position(x: 5, y: 5))
    }
    
    func testPlateauDictionaryInitializer() {
        //Given
        var plateau: Plateau?
        
        //When
        do {
            guard let dictionary = try "{\"x\" : 5, \"y\" : 5}".toJsonDictionary()
                else {
                    XCTFail("json parsing did fail")
                    return
            }
            plateau = try Plateau(with: dictionary)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
        
        
        //Then
        XCTAssertEqual(plateau?.topRightCorner, Position(x: 5, y: 5))
    }


}
