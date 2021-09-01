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
    
    func test_simpleQuadratic() throws {
        //given
        let input = Solution(valueA: 2, valueB: -7, valueC: 3, Raiz1: 0, Raiz2: 0, Quadratic: true)
        //when
        let result = solver.secondGradeSolver(solution: input)
        //then
        let expectedValueA: Float16 = 2
        let expectedValueB: Float16 = -7
        let expectedValueC: Float16 = 3
        let expectedValueR1: Float16 = 3
        let expectedValueR2: Float16 = 0.5
        let expectedValueQ: Bool = true
        XCTAssertEqual(result.valueA, expectedValueA)
        XCTAssertEqual(result.valueB, expectedValueB)
        XCTAssertEqual(result.valueC, expectedValueC)
        XCTAssertEqual(result.Raiz1, expectedValueR1)
        XCTAssertEqual(result.Raiz2, expectedValueR2)
        XCTAssertEqual(result.Quadratic, expectedValueQ)
    }
    
    func test_notQuadratic() throws {
        //given
        let input = Solution(valueA: 0, valueB: -7, valueC: 3, Raiz1: 0, Raiz2: 0, Quadratic: true)
        //when
        let result = solver.secondGradeSolver(solution: input)
        //then
        let expectedValueA: Float16 = 0
        let expectedValueB: Float16 = -7
        let expectedValueC: Float16 = 3
        let expectedValueR1: Float16 = 0
        let expectedValueR2: Float16 = 0
        let expectedValueQ: Bool = false
        XCTAssertEqual(result.valueA, expectedValueA)
        XCTAssertEqual(result.valueB, expectedValueB)
        XCTAssertEqual(result.valueC, expectedValueC)
        XCTAssertEqual(result.Raiz1, expectedValueR1)
        XCTAssertEqual(result.Raiz2, expectedValueR2)
        XCTAssertEqual(result.Quadratic, expectedValueQ)
    }
    
    func test_negativeDecimalQuadratic() throws {
        //given
        let input = Solution(valueA: 1, valueB: 4, valueC: 2, Raiz1: 0, Raiz2: 0, Quadratic: true)
        //when
        let result = solver.secondGradeSolver(solution: input)
        //then
        let expectedValueA: Float16 = 1
        let expectedValueB: Float16 = 4
        let expectedValueC: Float16 = 2
        let expectedValueR1: Float16 = -0.5857
        let expectedValueR2: Float16 = -3.4142
        let expectedValueQ: Bool = true
        XCTAssertEqual(result.valueA, expectedValueA)
        XCTAssertEqual(result.valueB, expectedValueB)
        XCTAssertEqual(result.valueC, expectedValueC)
        XCTAssertEqual(result.Raiz1, expectedValueR1)
        XCTAssertEqual(result.Raiz2, expectedValueR2)
        XCTAssertEqual(result.Quadratic, expectedValueQ)
    }

    

}
