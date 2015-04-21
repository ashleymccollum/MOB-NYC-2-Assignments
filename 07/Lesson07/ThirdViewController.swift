import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var pathToFile: String? {
        get {
            let filename = "todoThree.txt"
            let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
            let documentsDirectory = paths.objectAtIndex(0) as! String
            let path = documentsDirectory.stringByAppendingPathComponent(filename)
            
            //println(path)
            return path
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        textView.text.writeToFile(pathToFile!, atomically: true, encoding: NSUTF8StringEncoding , error: nil)
        
        if segue.destinationViewController is FourthViewController {
            var contentVC = segue.destinationViewController as! FourthViewController
            contentVC.filePath = self.pathToFile!
        }
    }
}