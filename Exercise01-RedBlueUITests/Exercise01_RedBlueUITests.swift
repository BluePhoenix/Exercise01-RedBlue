//
//  Exercise01_RedBlueUITests.swift
//  Exercise01-RedBlueUITests
//
//  Created by Felix Barros on 11/24/15.
//  Copyright © 2015 Bits That Matter. All rights reserved.
//

import XCTest

class Exercise01_RedBlueUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testElementsInitiallyDisplayed() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let hideRedBubbleButton = app.buttons["Hide Red Bubble"]
        let hideBlueBubbleButton = app.buttons["Hide Blue Bubble"]
        
        XCTAssert(hideRedBubbleButton.hittable)
        XCTAssert(hideBlueBubbleButton.hittable)
        
        XCTAssert(app.images["Blue Bubble"].hittable)
        XCTAssert(app.images["Red Bubble"].hittable)
    }
    
    func testBubblesCanBeHidden() {
        let app = XCUIApplication()
        let hideRedBubbleButton = app.buttons["Hide Red Bubble"]
        let hideBlueBubbleButton = app.buttons["Hide Blue Bubble"]
        let blueBubbleImage = app.images["Blue Bubble"]
        let redBubbleImage = app.images["Red Bubble"]
        
        hideRedBubbleButton.tap()
        XCTAssertFalse(hideRedBubbleButton.hittable)
        XCTAssertFalse(redBubbleImage.hittable)
        
        XCTAssert(hideBlueBubbleButton.hittable)
        XCTAssert(blueBubbleImage.hittable)
        
        hideBlueBubbleButton.tap()
        XCTAssertFalse(hideRedBubbleButton.hittable)
        XCTAssertFalse(redBubbleImage.hittable)
        
        XCTAssertFalse(hideBlueBubbleButton.hittable)
        XCTAssertFalse(blueBubbleImage.hittable)
    }
}
