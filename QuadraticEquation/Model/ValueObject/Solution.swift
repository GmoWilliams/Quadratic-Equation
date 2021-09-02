//
//  Solution.swift
//  QuadraticEquation
//
//  Created by user190825 on 8/28/21.
//

import Foundation

public class Solution {
    public let valueA : Float16
    public let valueB : Float16
    public var valueC : Float16
    
    public var Raiz1 : String
    public var Raiz2 : String
    public var Quadratic : Bool
    
    public init(valueA: Float16, valueB: Float16, valueC: Float16, Raiz1: String, Raiz2: String, Quadratic: Bool) {
        self.valueA = valueA
        self.valueB = valueB
        self.valueC = valueC
        self.Raiz1 = Raiz1
        self.Raiz2 = Raiz2
        self.Quadratic = Quadratic
    }
}
