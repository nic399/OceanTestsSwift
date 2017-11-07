//
//  Ocean_SwiftTests_06.swift
//  Ocean-Swift
//
//  Created by Daniel Mathews on 2015-01-27.
//  Copyright (c) 2015 com.lighthouse-labs. All rights reserved.
//


import XCTest

class Ocean_SwiftTests_06: XCTestCase {
    
    /*
    The submarine contains cargo where the fish are stored (in order of first caught to last caught).
    */
    
    var sub:Submarine = Submarine()
    
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
        
        XCTAssertTrue(false)
        
    }
    
    func testSubGoesFishing() {
        
        /* count of cargo after submarine picks up a fish at depth = 1, tile = 3 is 1.
            Test that the count of cargo items is 0 */
        
        XCTAssertTrue(false)
    }
    
    func testSubGoesFishingCorrectly() {
        
        /* submarine's cargo initially contains a Giant Tuna and then navigates to the giant salmon at depth = 2, tile = 1. 
        Test that in cargo[0] is a Giant Tuna and in cargo[1] is a Giant Salmon */
        
        XCTAssertTrue(false)
    }
}
