//
//    ___FILENAME___
//    ___PROJECTNAME___
//
//    Created by ___FULLUSERNAME___ on ___DATE___.
//    Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
    // MARK: Subject under test
    
    var controller: ___VARIABLE_sceneName___ViewController!
    var window: UIWindow!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        window = UIWindow()
        setup___VARIABLE_sceneName___ViewController()
    }
    
    override func tearDown() {
        window = nil
        controller = nil
        super.tearDown()
    }
    
    // MARK: Test setup
    
    func setup___VARIABLE_sceneName___ViewController() {
        controller = ___VARIABLE_sceneName___ViewController()
    }
    
    func loadView() {
        window.addSubview(controller.view)
        RunLoop.current.run(until: Date())
    }
    
    // MARK: Test doubles
    
    class ___VARIABLE_sceneName___BusinessLogicSpy: ___VARIABLE_sceneName___BusinessLogic, ___VARIABLE_sceneName___DataStore {
        var makeRequestCalled = false
        
        func makeRequest(request: ___VARIABLE_sceneName___.Model.Request.RequestType) {
            makeRequestCalled = true
        }
    }
    
    // MARK: Tests
    
    func testShouldmakeRequestWhenViewIsLoaded() {
        // Given
        let interactor = ___VARIABLE_sceneName___BusinessLogicSpy()
        controller.interactor = interactor
        
        // When
        loadView()
        
        // Then
        XCTAssertTrue(interactor.makeRequestCalled, "viewDidLoad() should ask the interactor to do Model")
    }
    
    func testDisplayData() {
        // Given
        // let viewModel = ___VARIABLE_sceneName___.Model.ViewModel()
        
        // When
        loadView()
        controller.displayData(viewModel: .some)
        
        // Then
        //XCTAssertEqual(controller.nameTextField.text, "", "displayData(viewModel:) should update the name text field")
    }
    
}
