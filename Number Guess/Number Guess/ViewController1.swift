import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var remainingGuess: UILabel!
    @IBOutlet weak var helpLabel: UILabel!
    @IBOutlet weak var guess: UITextField!
    
    var randomNumber:Int?
    var rg:Int = 3

    override func viewDidLoad() {
        super.viewDidLoad()
        
        remainingGuess.layer.borderWidth = 1
        remainingGuess.layer.borderColor = UIColor.white.cgColor
        remainingGuess.text = " Remaining Guess: \(rg) "
        
        helpLabel.layer.borderWidth = 1
        helpLabel.layer.borderColor = UIColor.white.cgColor
        
        print(randomNumber!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let data = sender as? Bool{
            
            let view = segue.destination as! ViewController2
            view.result = data
        }
    }
    
    @IBAction func getGuess(_ sender: Any) {

        if let guessText = guess.text{
            
            if let guessNumber = Int(guessText){
                
                rg-=1
                if rg != 0{
                    
                    if guessNumber == randomNumber!{
                        let result = true
                        performSegue(withIdentifier: "to2", sender: result)
                    }
                    if guessNumber < randomNumber!{
                        helpLabel.isHidden = false
                        helpLabel.text = "UP !"
                        remainingGuess.text = " Remaining Guess: \(rg) "
                    }
                    if guessNumber > randomNumber!{
                        helpLabel.isHidden = false
                        helpLabel.text = "LOWER !"
                        remainingGuess.text = " Remaining Guess: \(rg) "
                    }
                }
                else if guessNumber == randomNumber! && rg == 0 {
                    let result = true
                    performSegue(withIdentifier: "to2", sender: result)
                }
                else{
                    let result = false
                    performSegue(withIdentifier: "to2", sender: result)
                }
                guess.text = ""
            }
        }
    }
}
