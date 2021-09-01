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
        // secondGrade = "True"
}

public class EquationSolver {
    public func secondGradeSolver (solution: Solution) -> Solution{
        
        var Delta:Float16
        Delta = solution.valueB*solution.valueB - 4*solution.valueA*solution.valueC;
        
        if (solution.valueA == 0 && solution.valueB == 0 && solution.valueC == 0) {
            solution.Raiz1 = 0
            solution.Raiz2 = 0
        }
        else if (solution.valueA == 0) {
            createAlert(title: "AVISO", message: "No es una ecuacion de segundo grado")
            solution.Quadratic = false
            
        }
        else {
            
            
            if (Delta == 0){
                solution.Raiz1 = (-solution.valueB/2*solution.valueA)
            }
            else if (Delta < 0){
                solution.Raiz2 = 888
            }
            else {
                solution.Raiz1 = (-solution.valueB + (sqrt(Delta))) / (2*solution.valueA)
                solution.Raiz2 = (-solution.valueB - (sqrt(Delta))) / (2*solution.valueA)
            }
        }
        return Solution(valueA: solution.valueA, valueB: solution.valueB, valueC: solution.valueC, Raiz1: solution.Raiz1, Raiz2: solution.Raiz2, Quadratic: solution.Quadratic)
         
 
        
 /*return Solution(valueA: solution.valueA, valueB: solution.valueB, valueC: solution.valueC)*/
    }
        
}
