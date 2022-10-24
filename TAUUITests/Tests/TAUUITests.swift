//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Mai Loan Tran on 13/10/2022.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: TAUUITestBase {
    

    func testAllElementsOfMainScreen() {
       
        app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["enterCity"]/*[[".staticTexts[\"Enter Your City \"]",".staticTexts[\"enterCity\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        //app.buttons["enrollButton"].tap()
        app.staticTexts["Please Enter City"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
                
    }
    
    func testThankYouMessage()
        {
        
            app.textFields["city"].tap()
            app.textFields["city"].typeText("London")
            XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
