//
//  ViewController.swift
//  QuadraticEquation
//
//  Created by user190825 on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var ATextField: UITextField!
    @IBOutlet weak var BTextField: UITextField!
    @IBOutlet weak var CTextField: UITextField!
    @IBOutlet var SolveBtn: UIButton!
    
    @IBOutlet weak var lblRaiz1: UITextField!
    @IBOutlet weak var lblRaiz2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // lblRaiz1.isHidden = true
    }
    
  

    let equationSolver = EquationSolver()
    
    @IBAction func SolveBtnAction(_ sender: Any) {
        let a = ATextField.text
        let b = BTextField.text
        let c = CTextField.text
        let raiz1 = lblRaiz1.text
        let raiz2 = lblRaiz2.text
        
        
        equationSolver.secondGradeSolver(solution: Solution(valueA: Float16(a)!,valueB: Float16(b)!, valueC: Float16(c)!, Raiz1: Float16 (raiz1)!, Raiz2: Float16 (raiz2)! ))
        /*
        let a:Float = (Float)(ATextField.text!)!
        let b:Float = (Float)(BTextField.text!)!
        let c:Float = (Float)(CTextField.text!)!
        
        var Delta:Float
        var x1:Float
        var x2:Float
        
        if (a == 0 && b == 0 && c == 0) { lblRaiz1.text = "Todas tus raices son 0"}
        else if (a == 0) {
            // lblRaiz1.text = "X1 = \(-c/b)"
            // lblRaiz2.text = "X2 = \(-c/b)"
            createAlert(title: "AVISO", message: "No es una ecuacion de segundo grado")
        }
        else {
            Delta = b*b - 4*a*c;
            
            if (Delta == 0){
                lblRaiz1.text = "x = \(-b/2*a)"
            }
            else if (Delta < 0){
                lblRaiz1.text = "? "
            }
            else {
                x1 = (-b + (sqrt(Delta))) / (2*a)
                x2 = (-b - (sqrt(Delta))) / (2*a)
                print("X1 = \(x1)")
                print("X2 = \(x2)")
                lblRaiz1.text = "X1 = \(x1)"
                lblRaiz2.text = "X2 = \(x2)"
            }
        }*/
    }
    
}
    


