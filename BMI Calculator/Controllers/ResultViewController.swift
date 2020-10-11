//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Mighri Radhi on 21/08/2020.
//  Copyright © 2020 Mighri Radhi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        
        // when we used the just the code to move between viewControllers
//        view.backgroundColor = .red // or view.backgroundColor = UIColor.red
//        let label = UILabel()
//        label.text = bmiValue
//        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//        view.addSubview(label )
    }
    
    
    
    
    

  

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated:true, completion: nil) // go back to the previous screen
        

    }
    
    
}
