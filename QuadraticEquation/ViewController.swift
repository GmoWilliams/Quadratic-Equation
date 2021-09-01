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
        /*
        lblRaiz1.text = ""
        lblRaiz2.text = ""
        */

        /*let a = ATextField.text
        let b = BTextField.text
        let c = CTextField.text
 */
        /*let raiz1 = lblRaiz1.text
        let raiz2 = lblRaiz2.text
        */
        if let a  = ATextField.text {
            if !a.isEmpty {
                if let b  = BTextField.text {
                    if !b.isEmpty {
                        if let c  = CTextField.text {
                            if !c.isEmpty {
        let Result = equationSolver.secondGradeSolver(solution: Solution(valueA: Float16(a)!,valueB: Float16(b)!,valueC: Float16(c)!, Raiz1: Float16(c)!, Raiz2: Float16(c)!))
                                
                                
                                lblRaiz1.text = String(Result.Raiz1)
                                lblRaiz2.text = String(Result.Raiz2)
                            }
                        }
                    }
                }
            }
        }
        
    }
    
}
    


