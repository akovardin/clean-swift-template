//
//    ___FILENAME___
//    ___PROJECTNAME___
//
//    Created by ___FULLUSERNAME___ on ___DATE___.
//    Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
    // MARK: Subject under test
    
    var interactor: ___VARIABLE_sceneName___Interactor!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Interactor()
    }
    
    override func tearDown() {
        interactor = nil
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setup___VARIABLE_sceneName___Interactor() {
        interactor = ___VARIABLE_sceneName___Interactor()
    }
    
    // MARK: Test doubles
    
    class ___VARIABLE_sceneName___PresentationLogicSpy: ___VARIABLE_sceneName___PresentationLogic {
        
        var presentDataCalled = false
        
        func presentData(response: ___VARIABLE_sceneName___.Model.Response.ResponseType) {
            presentDataCalled = true
        }
    }
    
    // MARK: Tests
    
    func testMakeRequest() {
        // Given
        let presenter = ___VARIABLE_sceneName___PresentationLogicSpy()
        interactor.presenter = presenter
        
        // When
        interactor.makeRequest(request: .some)
        
        // Then
        XCTAssertTrue(presenter.presentDataCalled, "makeRequest(request:) should ask the presenter to format the result")
    }
    
}
