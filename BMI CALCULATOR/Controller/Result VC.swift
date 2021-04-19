//
//  Result VC.swift
//  BMI CALCULATOR
//
//  Created by ALISHA JOSHI K on 12/04/21.
//

import UIKit

class Result_VC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue : String = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultLabel.text = bmiValue
    }
    

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
