//
//    ___FILENAME___
//    ___PROJECTNAME___
//
//    Created by ___FULLUSERNAME___ on ___DATE___.
//    Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    // MARK: Subject under test
    
    var presenter: ___VARIABLE_sceneName___Presenter!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }
    
    override func tearDown() {
        presenter = nil
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setup___VARIABLE_sceneName___Presenter() {
        presenter = ___VARIABLE_sceneName___Presenter()
    }
    
    // MARK: Test doubles
    
    class ___VARIABLE_sceneName___DisplayLogicSpy: ___VARIABLE_sceneName___DisplayLogic {
        var displayDataCalled = false
        
        func displayData(viewModel: ___VARIABLE_sceneName___.Model.ViewModel.ViewModelData) {
            displayDataCalled = true
        }
    }
    
    // MARK: Tests
    
    func testPresentData() {
        // Given
        let controller = ___VARIABLE_sceneName___DisplayLogicSpy()
        presenter.viewController = controller
        
        // When
        presenter.presentData(response: .some)
        
        // Then
        XCTAssertTrue(controller.displayDataCalled, "presentData(response:) should ask the view controller to display the result")
    }
    
}
