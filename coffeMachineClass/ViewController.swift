//
//  ViewController.swift
//  coffeMachineClass
//
//  Created by Admin on 11.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    let myMachine = machine.init()
    
    @IBOutlet weak var screenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    
    @IBAction func makeAmericanoButton(_ sender: UIButton) {
         myMachine.doAmerikano()
        if myMachine.checkIsOk == true {
            screenLabel.text = "Take Your Americano"
        } else {
            screenLabel.text = myMachine.checkIngredients(20, waterNeeded: 10, coffeNeeded: 15)
        }
        print(myMachine.description)
    }


    @IBAction func makeEsspressoButton(_ sender: UIButton) {
        myMachine.doEsspresso()
        if myMachine.checkIsOk == true{
        screenLabel.text = "Take Your Esspresso"
        } else {
            screenLabel.text = myMachine.checkIngredients(0, waterNeeded: 5, coffeNeeded: 20)
        }
       print(myMachine.description)
    }
    
    @IBAction func addMilkButton(_ sender: UIButton) {
         myMachine.fillMachineWithMilk()
        screenLabel.text = "Milk added"
    }
    
    @IBAction func addWaterButton(_ sender: UIButton) {
        myMachine.fillMachineWithWater()
        screenLabel.text = "Water added"
    }
    
    @IBAction func addCoffeeButton(_ sender: UIButton) {
         myMachine.fillMachineWithCoffe()
        screenLabel.text = "Coffee added"
    }
    
    @IBAction func cleanLotButton(_ sender: UIButton) {
         myMachine.cleanLot()
        screenLabel.text = "Lot is clear"
    }
    
    
}








