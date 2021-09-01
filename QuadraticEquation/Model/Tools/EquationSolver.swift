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
            let Raiz1: Float16 = 0
            let Raiz2: Float16 = 0
        }
        else if (solution.valueA == 0) {
            // lblRaiz1.text = "X1 = \(-c/b)"
            // lblRaiz2.text = "X2 = \(-c/b)"
            createAlert(title: "AVISO", message: "No es una ecuacion de segundo grado")
        }
        else {
            
            
            if (Delta == 0){
                let Raiz1: Float16 = (-solution.valueB/2*solution.valueA)
            }
            else if (Delta < 0){
                let Raiz2: Float16 = 888
            }
            else {
                let Raiz1: Float16 = (-solution.valueB + (sqrt(Delta))) / (2*solution.valueA)
                let Raiz2: Float16 = (-solution.valueB - (sqrt(Delta))) / (2*solution.valueA)
            }
        }
        return Solution(valueA: solution.valueA, valueB: solution.valueB, valueC: solution.valueC, Raiz1: solution.Raiz1, Raiz2: solution.Raiz2)
    }
        
}
