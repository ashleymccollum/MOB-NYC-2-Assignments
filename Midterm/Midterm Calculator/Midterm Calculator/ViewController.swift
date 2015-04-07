
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentOperation = "="
        numberView.text = ("\(result)")
    }
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func clearSelected(sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOperation = "="
        numberView.text = ("\(result)")
    }
    
    
    @IBAction func percentSelected(sender: AnyObject) {
        result = currentNumber / 100
        currentNumber = currentNumber / 100
        currentOperation = "="
        numberView.text = ("\(result)")
    }
    
    
    @IBAction func plusMinusSelected(sender: UIButton) {
        result = currentNumber * -1
        currentNumber = currentNumber * -1
        currentOperation = "="
        numberView.text = ("\(result)")
    }
    
    @IBOutlet weak var numberView: UILabel!
    
    var result = Float()
    var currentNumber = Float()
    var currentOperation = String()
    
    

    @IBAction func buttonPressed(sender: UIButton) {
        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!.toInt()!)
        numberView.text = ("\(currentNumber)")
    }
    
    
    @IBAction func buttonOperation(sender: UIButton) {
        switch currentOperation {
            case "=":
                result = currentNumber
            case "+":
                result = result + currentNumber
            case "-":
                result = result - currentNumber
            case "x":
                result = result * currentNumber
            case "/":
                result = result / currentNumber
            case "%":
                result = result / 100
            default:
                println("try again")
        }
        
        currentNumber = 0
        numberView.text = ("\(result)")
        
        if(sender.titleLabel!.text == "=") {
            result = 0
        }
    
        currentOperation = sender.titleLabel!.text! as String!
    }
    

    
}