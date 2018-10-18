//
//  machine.swift
//  coffeMachineClass
//
//  Created by Admin on 16.10.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class machine: NSObject {

     var coffe = 0
     var water = 0
     var milk = 0
     var checkIsOk = false
     var lot = 0
    
    let maxCoffe = 100
    let maxWater = 100
    let maxMilk = 100

    override var description: String {
        var result = ""
        result += "coffe \(coffe)\n"
        result += "water \(water)\n"
        result += "milk \(milk)\n"
        return result
    }
    func fillMachineWithCoffe(){
        coffe = maxCoffe
    }
    func fillMachineWithWater(){
        water = maxWater
    }
    func fillMachineWithMilk(){
        milk = maxMilk
    }
    
    func doAmerikano() {
        var text = ""
        let milkNeeded = 20
        let waterNeeded = 10
        let coffeNeeded = 15
      text = "\(checkIngredients(milkNeeded, waterNeeded: waterNeeded,coffeNeeded: coffeNeeded))"
        if checkIsOk == true {
            coffe -= 15
            water -= 10
            milk -= 20
            lot += 1
            text = "Take your Americano"
        }
        
        print(text)
    }
    func doEsspresso() {
        var text = ""
        let milkNeeded = 0
        let waterNeeded = 5
        let coffeNeeded = 20
        text = "\(checkIngredients(milkNeeded, waterNeeded: waterNeeded,coffeNeeded: coffeNeeded))"
        if checkIsOk == true {
            coffe -= 20
            water -= 5
            milk -= 0
            lot += 1
            text = "Take your Esspresso"
        }
        
        print(text)
    }

    func cleanLot() {
        lot = 0
    }
    
   func checkIngredients( _ milkNeeded: Int, waterNeeded: Int, coffeNeeded: Int) -> String  {
        checkIsOk = true
        let text = ""
        if milk < milkNeeded {
            checkIsOk = false
            return "no more milk"
        }
        if water < waterNeeded {
            checkIsOk = false
            return "no more water"
        }
        
        if coffe < coffeNeeded {
            checkIsOk = false
            return "no more coffe"
        }
       if  lot == 5 {
            checkIsOk = false
         return "need to clean lot"
        }
  return text    
}

}

