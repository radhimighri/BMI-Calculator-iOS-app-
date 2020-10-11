//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Mighri Radhi on 21/08/2020.
//  Copyright © 2020 Mighri Radhi. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    //var BMI: String? // when we didn't use MVC division
    
    var calculatorBrain = CalculatorBrain() // using MVC : create a copy from the Model "CalculatorBrain"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format:"%.2f",sender.value)
        heightLabel.text = "\(height) m"

    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight) m"
        // or
        //        //        weightLabel.text = String(format:"%.0f",sender.value)
        //        weightLabel.text = "\(weight) Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        calculatorBrain.calaculateBMI(height: height, weight : weight)
        
            // using Segues to move between viewControllers
            performSegue(withIdentifier: "goToResult", sender: self)
        
        
//        BMI = String(format:"%.1f",(weight/pow(height,2)))
//        print(BMI) // when we didn't use the MVC
        
        // when we used the just the code to move between viewControllers
//        var secondVC = ResultViewController()
//        secondVC.bmiValue = BMI
//        self.present(secondVC, animated: true, completion: nil)
    


        
    }
    
   
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
            //destinationVC.bmiValue = BMI //when we didn't use the MVC

        }
        
       }
    
    
}

