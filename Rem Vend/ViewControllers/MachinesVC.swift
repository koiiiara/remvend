//
//  MachinesVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 23.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit

class MachinesVC: UIViewController {
    
    var section = Sections(rawValue: String())
    
    @IBOutlet var menuPoint1: UIView!
    @IBOutlet var menuPoint2: UIView!
    @IBOutlet var menuPoint3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var menuPoints = [UIView]()
        menuPoints = [menuPoint1, menuPoint2, menuPoint3]
               for i in menuPoints {
                   i.layer.cornerRadius = 15
                   i.layer.masksToBounds = false
                   i.layer.shadowColor = UIColor.black.cgColor
                   i.layer.shadowOpacity = 0.2
                   i.layer.shadowOffset = CGSize(width: 0, height: 1)
                   i.layer.shadowRadius = 1
               }
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              //if segue.identifier == "fromMenuToMachines"
           switch segue.identifier {
           case "toVendingCoffee":
            (segue.destination as! VendorsVC).typeOfProduct = TypeOfDevice.vendingCoffee
           case "toVendingSnack":
            (segue.destination as! VendorsVC).typeOfProduct = TypeOfDevice.vendingSnack
           case "toCoffeeMachines":
            (segue.destination as! VendorsVC).typeOfProduct = TypeOfDevice.coffeeMachine
           default:
               return
           }
       }

}
