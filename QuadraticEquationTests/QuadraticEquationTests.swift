//
//  QuadraticEquationTests.swift
//  QuadraticEquationTests
//
//  Created by user190825 on 8/26/21.
//

import XCTest
@testable import QuadraticEquation

class QuadraticEquationTests: XCTestCase {
    let solver = EquationSolver()
    
    /*
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    */
    
    func testX1_X2() throws {
        //given
        let input = Solution(valueA: 2, valueB: -7, valueC: 3, Raiz1: 0, Raiz2: 0)
        //when
        let result = solver.secondGradeSolver(solution: input)
        //then
        XCTAssert(result == (2,-7, 3, 3, 0.5) )
    }

    /*
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
                           self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    */

}
