//
//  MinimumWKWebViewTests.swift
//  MinimumWKWebViewTests
//
//  Created by Suita Fujino on 2018/07/14.
//  Copyright © 2018年 Suita Fujino. All rights reserved.
//

import XCTest
@testable import MinimumWKWebView

class MinimumWKWebViewTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWillFail() {
        XCTAssert(0 == 1)
    }
    
    func testWillSuccess() {
        XCTAssert(1 == 1)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
