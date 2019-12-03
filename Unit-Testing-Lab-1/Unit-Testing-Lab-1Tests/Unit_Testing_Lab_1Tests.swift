//
//  Unit_Testing_Lab_1Tests.swift
//  Unit-Testing-Lab-1Tests
//
//  Created by Kelby Mittan on 12/3/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import XCTest

@testable import Unit_Testing_Lab_1

class Unit_Testing_Lab_1Tests: XCTestCase {

    let filename = "jokes"
    let ext = "json"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testReadingDataFromJokesFile() {
        // act (when)
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        
        // assert (then)
        XCTAssertNotNil(data)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testFirstJoke() {
        let firstUser = getJokes().first
        let expectedSetup = "Why did the programmer quit his job?"
        let setup = firstUser?.setup
        
        XCTAssertEqual(expectedSetup, setup, "setup should be \(expectedSetup)")
    }

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}

extension Unit_Testing_Lab_1Tests {
    
    func getRawData() -> Data {
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        return data
    }
    
    func getJokes() -> [Jokes] {
//        let data = getRawData()
        let jokes = Jokes.getJokes()
        return jokes
    }
    
}
