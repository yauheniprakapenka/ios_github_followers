//
//  UITestCollectionUITests.swift
//  UITestCollectionUITests
//
//  Created by yauheni prakapenka on 04/08/2019.
//  Copyright © 2019 yauheni prakapenka. All rights reserved.
//

import XCTest

class UITestTapAButton: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
    }

    func testOneTapAButtonWithIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["buttonWithIdentifier"].tap()
        XCTAssert(app.staticTexts["#1 успешно"].exists)
    }
    
    func testTwoTapAButtonWithoutIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["Button without identifier"].tap()
        XCTAssert(app.staticTexts["#2 успешно"].exists)
    }
    
    func testThreeTapAButtonWithoutIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["Button with some name"].firstMatch.tap()
        XCTAssert(app.staticTexts["#3 успешно"].exists)
    }
    
    func testFourTapAButtonWithoutIdentifier() {
        app.buttons["Button"].tap()
        app.buttons["Show alert"].tap()
        XCTAssert(app.staticTexts["Никола Тесла"].exists)
        app.alerts.buttons["Спасибо"].tap()
        XCTAssert(!app.staticTexts["Никола Тесла"].exists)
        XCTAssert(app.staticTexts["#4 успешно"].exists)
    }
    
    func testFiveTapANavigationBarButton() {
        app.buttons["Button"].tap()
        XCTAssert(app.staticTexts["Нажать на кнопку в Navigation Bar"].exists)
        app.buttons["Категория"].tap()
        XCTAssert(!app.staticTexts["Нажать на кнопку в Navigation Bar"].exists)
        app.buttons["Button"].tap()
        app.buttons["NavigationBarButton"].tap()
        XCTAssert(app.staticTexts["#5 успешно"].exists)
    }
    
    func testSixTapAnActionSheetButton() {
        app.buttons["Button"].tap()
        app.buttons["Show action sheet"].tap()
        XCTAssert(app.staticTexts["Action Sheet Title"].exists)
        app.buttons["Approve"].tap()
        XCTAssert(!app.staticTexts["Action Sheet Title"].exists)
        XCTAssert(app.staticTexts["#6 успешно"].exists)
    }
    
}

