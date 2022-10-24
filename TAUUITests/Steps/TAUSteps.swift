
import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given App is ready") { _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
       }
        
    }
    
    func whenIEnter(city: String){
        XCTContext.runActivity(named: "when I enter city\(city) "){ _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
        
    }
    
    func whenIEnrolled(){
        XCTContext.runActivity(named: "when I enrolled "){ _ in
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thanks message ") { _ in
            XCTAyncAssert(TAUScreen.thankYouMessage.element)
        }
       
    }
    
}
