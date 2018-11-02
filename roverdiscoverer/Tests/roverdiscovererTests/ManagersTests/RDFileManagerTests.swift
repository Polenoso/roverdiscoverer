//
//  RDFileManagerTests.swift
//  roverdiscovererTests
//
//  Created by Aitor Pagán on 02/11/2018.
//

import XCTest
import class Foundation.Bundle
import RoverDiscovererLib

class RDFileManagerTests: XCTestCase {
    
    override func setUp() {
        // There is nothing to setup
    }

    override func tearDown() {
        // There is nothing to tearDown
    }

    func testGetFileFromJSONFileShouldReturnJSONDictionary() {
        //Given
        
        let path = (Bundle(for: type(of: self)).resourcePath ?? "") + "/testsimplefile.json"
        
        //When
        do {
            guard let json = try RDFileManager.readFile(from: path) as NSDictionary? else {
                throw RDFileManager.Error.readingError
            }
            let valid: Bool = json.value(forKey: "test") as? Bool ?? false
            //Then
            XCTAssertTrue(valid, "Json must contain test key")
        } catch let error {
            XCTFail(error.localizedDescription)
        }
        
    }

}
