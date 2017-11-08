//
//  Ocean_SwiftTests_06.swift
//  Ocean-Swift
//
//  Created by Daniel Mathews on 2015-01-27.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//


import XCTest
@testable import Ocean_Swift

class Ocean_SwiftTests_06: XCTestCase {
    
    /*
    The submarine contains cargo where the fish are stored (in order of first caught to last caught).
    */
    
    var sub:Submarine = Submarine()
    var normal:Captain = Captain(captainType: Captain.CaptainType.Normal)
    var ocean:Ocean = Ocean()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSubHasEmptyCargo() {
       
        /* at initalization sub should have empty cargo. Test that the count of cargo items is 0 */
        let result = self.sub.cargo.count;
        let expected = 0
        
        XCTAssertEqual(result, expected, "Cargo should be empty initially")
        
    }
    
    func testSubGoesFishing() {
        
        /* count of cargo after submarine picks up a fish at depth = 1, tile = 3 is 1.
            Test that the count of cargo items is 0 */
        self.sub.captainDelegate = normal
        let fish = self.sub.goFish(ocean, depth: 1, tile: 4)
        let result = self.sub.cargo.count
        let expected = 1
        
        XCTAssertEqual(result, expected, "Cargo should have one item after catching one fish")
    }
    
    func testSubGoesFishingCorrectly() {
        
        /* submarine's cargo initially contains a Giant Tuna and then navigates to the giant salmon at depth = 2, tile = 1. 
        Test that in cargo[0] is a Giant Tuna and in cargo[1] is a Giant Salmon */
        self.sub.captainDelegate = normal
        self.sub.cargo += [GiantTuna()]
        self.sub.goFish(ocean, depth: 2, tile: 2)
        
        let tuna = self.sub.cargo[0] as? GiantTuna
        let salmon = self.sub.cargo[1] as? GiantSalmon
        
        XCTAssertNotNil(tuna, "The first slot should have a GiantTuna")
        XCTAssertNotNil(salmon, "The first slot should have a GiantSalmon")

    }
}





