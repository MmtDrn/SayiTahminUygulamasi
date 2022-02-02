import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entryLabel: UILabel!
    @IBOutlet weak var letsStart: UIButton!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    var randomNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        entryLabel.layer.borderWidth = 1
        entryLabel.layer.borderColor = UIColor.white.cgColor
        
        letsStart.layer.borderWidth = 1
        letsStart.layer.borderColor = UIColor.white.cgColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let data = sender as? Int{
            
            let view = segue.destination as! ViewController1
            view.randomNumber = data
        }
    }
    
    @IBAction func letsSatrt(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == 0{
            randomNumber += Int.random(in: 5...15)
            performSegue(withIdentifier: "to1", sender: randomNumber)
        }
        if segmentControl.selectedSegmentIndex == 1{
            randomNumber += Int.random(in: 3...23)
            performSegue(withIdentifier: "to1", sender: randomNumber)
        }
        if segmentControl.selectedSegmentIndex == 2{
            randomNumber += Int.random(in: 7...42)
            performSegue(withIdentifier: "to1", sender: randomNumber)
        }
    }

}


