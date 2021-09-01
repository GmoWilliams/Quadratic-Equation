//
//  QuadraticEquationUITests.swift
//  QuadraticEquationUITests
//
//  Created by user190825 on 8/26/21.
//

import XCTest

class QuadraticEquationUITests: XCTestCase {
    
    func testSolve() throws {
            // UI tests must launch the application that they test.
            let app = XCUIApplication()
            app.launch()
            
            let ATextField = app.textFields["ATextField"]
            let BTextField = app.textFields["BTextField"]
            let CTextField = app.textFields["CTextField"]
            let R1TextField = app.textFields["R1TextField"]
            let R2TextField = app.textFields["R2TextField"]
            
            ATextField.tap()
            ATextField.typeText("2")
            BTextField.tap()
            BTextField.typeText("-7")
            CTextField.tap()
            CTextField.typeText("3")
            app.staticTexts["Resolver"].tap()

            print("Raiz1 text field " + (R1TextField.value as! String))
            print("Raiz2 text field " + (R2TextField.value as! String))
            XCTAssertEqual(R1TextField.value as! String, "3.0")
            XCTAssertEqual(R2TextField.value as! String, "0.5")
        }
}
