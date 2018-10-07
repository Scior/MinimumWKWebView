//
//  WKWControllerTests.swift
//  MinimumWKWebViewTests
//
//  Created by Suita Fujino on 2018/10/07.
//  Copyright © 2018 Suita Fujino. All rights reserved.
//

import XCTest
@testable import MinimumWKWebView

class WKWViewControllerTests: XCTestCase {
    
    var viewController: UIViewController?
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateInitialViewController()
        
        UIApplication.shared.keyWindow?.rootViewController = viewController
        _ = viewController?.view
    }

}
