//
//  FirstViewController.swift
//  Rem Vend
//
//  Created by Илья Миронов on 15.12.2019.
//  Copyright © 2019 Ilya Mironov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController{

    @IBOutlet var menuPoint1: UIView!
    @IBOutlet var menuPoint3: UIView!
    @IBOutlet var menuPoint4: UIView!
    @IBOutlet var menuPoint5: UIView!

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var menuPoints = [UIView]()
        //fillCoreData()
        menuPoints = [menuPoint1, menuPoint3, menuPoint4, menuPoint5]
        for i in menuPoints {
            i.layer.cornerRadius = 15            
            i.layer.masksToBounds = false
            i.layer.shadowColor = UIColor.black.cgColor
            i.layer.shadowOpacity = 0.2
            i.layer.shadowOffset = CGSize(width: 0, height: 1)
            i.layer.shadowRadius = 1
        }
        
        //MARK: - Customize navigation controller
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           //if segue.identifier == "fromMenuToMachines"
        switch segue.identifier {
        case "fromMenuToMachines" :
            (segue.destination as! MachinesVC).section = Sections.machines
        case "fromMenuToPayment" :
            (segue.destination as! MachinesVC).section = Sections.payment
        default:
            return
        }
    }

}

