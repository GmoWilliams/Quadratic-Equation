//
//  EquationSolver.swift
//  QuadraticEquation
//
//  Created by user190825 on 8/28/21.
//

import Foundation
import UIKit

extension UIApplication
{
// ALERT FUNCTIONS (FIRST ONE IS NEEDED OUTSIDE OF VIEWCONTROLLER)
    class func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController?
    {
        if let nav = base as? UINavigationController
        {
            let top = topViewController(nav.visibleViewController)
            return top
        }

        if let tab = base as? UITabBarController
        {
            if let selected = tab.selectedViewController
            {
                let top = topViewController(selected)
                return top
            }
        }

        if let presented = base?.presentedViewController
        {
            let top = topViewController(presented)
            return top
        }
        return base
    }

}

func createAlert (title:String, message:String)
{
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: { (action) in alert.dismiss(animated: true, completion: nil) }))
    UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
        
}

// EQUATION SOLVER
public class EquationSolver {
    public func secondGradeSolver (solution: Solution) -> Solution{
        
        var Delta:Float16
        Delta = solution.valueB*solution.valueB - 4*solution.valueA*solution.valueC;
        
        if (solution.valueA == 0 && solution.valueB == 0 && solution.valueC == 0) {
            solution.Raiz1 = "0"
            solution.Raiz2 = "0"
        }
        else if (solution.valueA == 0) {
            createAlert(title: "AVISO", message: "No es una ecuacion de segundo grado")
            solution.Quadratic = false
            solution.Raiz2 = ""
            solution.Raiz1 = ""
        }
        else {
            if (Delta == 0){
                solution.Raiz1 = String(-solution.valueB/2*solution.valueA)
            }
            else if (Delta < 0){
                createAlert(title: "AVISO", message: "Esta ecuacion no tiene una solucion real")
                
                let partOne: String = String(Float16((-solution.valueB/2*solution.valueA)/(2*solution.valueA)))
                let imaginary: String = String(Float16((sqrt(-1*Delta))/(2*solution.valueA)))
                                
                solution.Raiz2 = partOne + " + " + imaginary + "i"
                solution.Raiz1 = partOne + " - " + imaginary + "i"
            }
            else {
                solution.Raiz1 = String((-solution.valueB + (sqrt(Delta))) / (2*solution.valueA))
                solution.Raiz2 = String((-solution.valueB - (sqrt(Delta))) / (2*solution.valueA))
            }
        }
        return Solution(valueA: solution.valueA, valueB: solution.valueB, valueC: solution.valueC, Raiz1: solution.Raiz1, Raiz2: solution.Raiz2, Quadratic: solution.Quadratic)
    }
        
}
