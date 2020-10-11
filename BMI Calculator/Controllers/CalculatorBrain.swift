import UIKit

struct CalculatorBrain {
 
    var bmi : BMI?
    
    
    mutating func calaculateBMI(height: Float, weight: Float) {
        
        let bmiValue = (weight/pow(height,2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .green)
        }
        else if bmiValue > 18.5 && bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.7647532821, green: 0.02147279769, blue: 0, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format:"%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getColor()  -> UIColor {
        return bmi?.color ?? .white
       }
       
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
       }
       
    
    
}
