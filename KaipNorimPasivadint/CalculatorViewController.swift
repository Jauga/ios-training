
import UIKit

class CalculatorViewController: UIViewController, CalculatorDataModelDelegate {
    // MARK: Variables
    private var dataModel: CalculatorDataModel!
    
    // MARK: Outlets
    @IBOutlet weak var TextView: UILabel!
    
    
    // MARK: Functions
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        dataModel = CalculatorDataModel(withDelegate: self)
    }
    
    func updateScreen(number: String) {
        
        TextView.text = number
    }
    

    @IBAction func buttonZeroAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "0")
    }
    
    @IBAction func buttonOneAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "1")
    }
    
    @IBAction func buttonTwoAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "2")
    }
    
    @IBAction func buttonThreeAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "3")
    }
    
    @IBAction func buttonFourAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "4")
    }
    
    @IBAction func buttonFiveAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "5")
    }
    
    @IBAction func buttonSixAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "6")
    }
    
    @IBAction func buttonSevenAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "7")
    }
    
    @IBAction func buttonEightAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "8")
    }
    
    @IBAction func buttonNineAction(_ sender: Any) {
        
        dataModel.updateCurrentNumber(number: "9")
    }
    
    @IBAction func buttonDecimalAction(_ sender: Any) {
        
        dataModel.handleDecimal()
    }
    
    @IBAction func buttonMultiplyAction(_ sender: Any) {
        
        dataModel.buttonAction(action: "*")
    }
    
    @IBAction func buttonDivideAction(_ sender: Any) {
        
        dataModel.buttonAction(action: "/")
    }
    
    @IBAction func buttonAddAction(_ sender: Any) {
        
        dataModel.buttonAction(action: "+")
    }
    
    @IBAction func buttonSubtractAction(_ sender: Any) {
        
        dataModel.buttonAction(action: "-")
    }
    
    @IBAction func buttonResetAction(_ sender: Any) {
        
        dataModel.resetAction()
    }
    
    @IBAction func buttonEqualsAction(_ sender: Any) {
        
        dataModel.equalsAction()
    }
}
