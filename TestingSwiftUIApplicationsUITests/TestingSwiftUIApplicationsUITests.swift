//
//  TestingSwiftUIApplicationsUITests.swift
//  TestingSwiftUIApplicationsUITests
//
//  Created by Ramill Ibragimov on 18.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import XCTest

class TestingSwiftUIApplicationsUITests: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        self.app = XCUIApplication()
        self.app.launch()
    }

    func testExample() {

        let darkModeToggle = self.app.switches["darkModeToggle"]
        let darkModeText = self.app.staticTexts["darkModeText"]
        
        darkModeToggle.tap()
        
        XCTAssertEqual("ON", darkModeText.label)
    }
}
