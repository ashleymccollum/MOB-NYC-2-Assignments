import UIKit

class FourthViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    var filePath: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileContent = NSString(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil)
        textView.text = String(fileContent!)
        
    }
    
}
