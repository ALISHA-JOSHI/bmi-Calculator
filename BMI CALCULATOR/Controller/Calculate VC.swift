//
//  ViewController.swift
//  BMI CALCULATOR
//
//  Created by ALISHA JOSHI K on 09/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var result : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightSlider.value = 1.5
        weightSlider.value = 100
    }

    
    @IBAction func setHeight(_ sender: UISlider) {
       
        let value = sender.value
        heightValue.text = ("\(String(format: "%.1f", value))m")
        
    }
    
    @IBAction func setWeight(_ sender: UISlider) {
        
        let value = Int(sender.value)
        weightValue.text = ("\(String(value))kg")

        
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        print(calculateBMI())
        let value = self.calculateBMI()
        self.result = String(format: "%.1f", value)
        self.performSegue(withIdentifier: "goToResultVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultVC"{
            let destinationVC = segue.destination as! Result_VC
            destinationVC.bmiValue = result
           
        }
    }
    
    func calculateBMI() -> Float{
        
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight/(height * height)
        return bmi
    }
        
    
}

