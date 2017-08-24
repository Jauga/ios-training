
import UIKit

class ViewController: UIViewController, CalculatorDataModelDelegate {
    // MARK: Variables
    private var dataModel: CalculatorDataModel!
    
    // MARK: Outlets
    @IBOutlet weak var TextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel = CalculatorDataModel(withDelegate: self)
    }
    
    func updateScreen(number: String) {
        TextView.text = number
    }
    
    // MARK: Button Actions
    @IBAction func ButtonZeroAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "0")
    }
    
    @IBAction func ButtonOneAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "1")
    }
    
    @IBAction func ButtonTwoAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "2")
    }
    
    @IBAction func ButtonThreeAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "3")
    }
    
    @IBAction func ButtonFourAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "4")
    }
    
    @IBAction func ButtonFiveAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "5")
    }
    
    @IBAction func ButtonSixAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "6")
    }
    
    @IBAction func ButtonSevenAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "7")
    }
    
    @IBAction func ButtonEightAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "8")
    }
    
    @IBAction func ButtonNineAction(_ sender: Any) {
        dataModel.updateCurrentNumber(number: "9")
    }
    
    @IBAction func ButtonDecimalAction(_ sender: Any) {
        dataModel.handleDecimal()
    }
    
    @IBAction func ButtonMultiplyAction(_ sender: Any) {
        dataModel.buttonAction(action: "*")
    }
    
    @IBAction func ButtonDivideAction(_ sender: Any) {
        dataModel.buttonAction(action: "/")
    }
    
    @IBAction func ButtonAddAction(_ sender: Any) {
        dataModel.buttonAction(action: "+")
    }
    
    @IBAction func ButtonSubtractAction(_ sender: Any) {
        dataModel.buttonAction(action: "-")
    }
    
    @IBAction func ButtonResetAction(_ sender: Any) {
        dataModel.resetAction()
    }
    
    @IBAction func ButtonEqualsAction(_ sender: Any) {
        dataModel.equalsAction()
    }
}
