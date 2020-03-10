//
//  FirstViewController.swift
//  Rem Vend
//
//  Created by Илья Миронов on 15.12.2019.
//  Copyright © 2019 Ilya Mironov. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController{

  
    @IBOutlet var swipeRecognizer: UIScreenEdgePanGestureRecognizer!
    @IBOutlet var menuPoint1: UIView!
    @IBOutlet var menuPoint4: UIView!
    @IBOutlet var menuPoint5: UIView!
    private let transition = PanelTransition()
   // let child = ChildViewController()
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    @IBAction func openDidPress(_ sender: Any) {
        let child = ChildViewController()
           child.transitioningDelegate = transition
           child.modalPresentationStyle = .custom
           
           present(child, animated: true)
       }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        var menuPoints = [UIView]()
        //fillCoreData()
        firstLaunch()
        menuPoints = [menuPoint1, menuPoint4, menuPoint5]
        for i in menuPoints {
            i.layer.cornerRadius = 15            
            i.layer.masksToBounds = false
            i.layer.shadowColor = UIColor.black.cgColor
            i.layer.shadowOpacity = 0.2
            i.layer.shadowOffset = CGSize(width: 0, height: 1)
            i.layer.shadowRadius = 1
        }
    configureNavigationController(for: navigationController!)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           //if segue.identifier == "fromMenuToMachines"
        switch segue.identifier {
        case "fromMenuToMachines" :
            (segue.destination as! MachinesVC).section = Sections.machines
        case "fromMenuToPayment" :
            return//(segue.destination as! PaymentVC).section = Sections.payment
        case "fromMenuToTelemetry":
            (segue.destination as! VendorsVC).typeOfProduct = TypeOfDevice.telemtry
        default:
            return
        }
    }

    func firstLaunch() {
        let checkForFirstTimeLaunch = UserDefaults.standard.bool(forKey: "firstLaunch")
        print(checkForFirstTimeLaunch)
        if (checkForFirstTimeLaunch == false) {
        print("First time launch")
        fillCoreData()
        UserDefaults.standard.set(true, forKey: "firstLaunch")
        }
    }
}

