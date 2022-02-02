import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    var result:Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        
        if result!{
            image.image = UIImage(named: "congratulations")
        }else{
            image.image = UIImage(named: "tryagain")
        }

        print(result!)
    }
    
    @IBAction func continueButton(_ sender: Any) {
        performSegue(withIdentifier: "to0", sender: nil)
    }
    
}
