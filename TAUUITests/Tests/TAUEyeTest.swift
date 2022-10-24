
import Foundation
import XCTest
import EyesXCUI

class TAUEyeTest: TAUUITestBase{
    func testTAUWithEyesXCUI() {
        
        
        eyes.open(withApplicationName: "TAU", testName: "TAU Demo of Eye XCUI SDK" )
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))
        XCUIApplication().buttons["enrollButton"].tap()
        eyes.checkWindow(withTag: "Please Enter City")
        
        
    }
    
    
}
