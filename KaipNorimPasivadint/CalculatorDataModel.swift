//
//  CalculatorDataModel.swift
//  KaipNorimPasivadint
//
//  Created by Manvydas on 2017-08-22.
//  Copyright © 2017 Manvydas. All rights reserved.
//

import Foundation
// MARK: Protocols
protocol CalculatorDataModelDelegate : class {
    func updateScreen(number: String)
}

// MARK: Class
class CalculatorDataModel {
    
    // MARK: Variables
    private weak var delegate: CalculatorDataModelDelegate?
    private var lastNumber : String = ""
    private var currentNumber : String = ""
    private var lastAction : String = ""
    
    //MARK: Constructors
    init (withDelegate delegate: CalculatorDataModelDelegate) {
        
        self.delegate = delegate
    }
    
    //MARK: Functions
    func performAction(action: String) -> String {
        
        if !(Float(lastNumber)==nil || Float(currentNumber)==nil) {
            
            switch action {
                
            case "*":
                return String(Float(lastNumber)! * Float(currentNumber)!)
            case "/":
                return String(Float(lastNumber)! / Float(currentNumber)!)
            case "+":
                return String(Float(lastNumber)! + Float(currentNumber)!)
            case "-":
                return String(Float(lastNumber)! - Float(currentNumber)!)
            default:
                return currentNumber
            }
        } else {
            return lastNumber
        }
    }
    
    
    func buttonAction(action : String) {
        
        if getLastNumber()=="" {
            switchNumber()
            setLastAction(action: action)
            
        } else {
            
            setLastNumber(number: performAction(action: lastAction))
            setCurrentNumber(number: "")
            setLastAction(action: action)
        }
        delegate?.updateScreen(number: lastNumber)
    }
    
    func resetAction() {
        
        setLastNumber(number: "")
        setCurrentNumber(number: "")
        delegate?.updateScreen(number: "")
    }
    
    func equalsAction() {
        
        lastNumber = performAction(action: lastAction)
        setCurrentNumber(number: "")
        setLastAction(action: "")
        delegate?.updateScreen(number: lastNumber)
    }
    
    func updateCurrentNumber(number : String) {
        
        currentNumber += number
        delegate?.updateScreen(number: currentNumber)
    }
    
    func handleDecimal() {
        
        if !currentNumber.contains(".") {
            currentNumber += "."
            delegate?.updateScreen(number: currentNumber)
        }
    }
    
    func getCurrentNumber() -> String {
        
        return currentNumber
    }
    func getLastAction() -> String {
        
        return lastAction
    }
    
    func getLastNumber() -> String {
        
        return lastNumber
    }
    
    func switchNumber() {
        
        lastNumber=currentNumber
        currentNumber=""
    }
    
    func setCurrentNumber (number: String) {
        
        currentNumber=number
    }
    
    func setLastNumber (number: String) {
        
        lastNumber=number
    }
    
    func setLastAction (action: String){
        
        lastAction=action
    }
    
    
}
