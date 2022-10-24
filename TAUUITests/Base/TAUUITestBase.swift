import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase{
    
    var app = XCUIApplication()
    
    var eyes = Eyes()
    
    override func setUpWithError() throws {
        
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = "VmPzgvM8IZ3lLCo60vrgXGj2s8275sXvVydsh5Ur9NM110"
    }

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
    
    func XCTAyncAssert (_ element: XCUIElement) {
        let isThankMessageExist = element.waitForExistence(timeout: 10)
        if isThankMessageExist{
            XCTAssertTrue(element.exists)
        }
        
    }
    
}
