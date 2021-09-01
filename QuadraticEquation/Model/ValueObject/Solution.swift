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
    
    public var Raiz1 : Float16
    public var Raiz2 : Float16
    
    public init(valueA: Float16, valueB: Float16, valueC: Float16, Raiz1: Float16, Raiz2: Float16) {
        self.valueA = valueA
        self.valueB = valueB
        self.valueC = valueC
        self.Raiz1 = Raiz1
        self.Raiz2 = Raiz2
    }
}
