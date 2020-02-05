//
//  ProductCardVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 28.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit

class PaymentCardVC: UIViewController {

    var product = Product()
    
    @IBOutlet var leftButton: UIButton!
    //@IBOutlet var rightButton: UIButton!
    
    @IBOutlet var productImage: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons = [leftButton]
        for i in buttons {
            i!.layer.cornerRadius = 15
            i!.layer.masksToBounds = false
            i!.layer.shadowColor = UIColor.black.cgColor
            i!.layer.shadowOpacity = 0.2
            i!.layer.shadowOffset = CGSize(width: 0, height: 1)
            i!.layer.shadowRadius = 1
        }
        navigationItem.title = "\(product.vendor!.name!) \(product.model!)"
        configureFor(product: product)
        
    }
    

    func configureFor(product: Product) {
        //self.productImage.image =
        
        if product.instruction != nil {
            leftButton.isEnabled = true
        } else {
            leftButton.isEnabled = false
        }
    }
    
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInstruction" {
            (segue.destination as! MainPDFViewController).documentType = TypeOfDocument.instruction
            (segue.destination as! MainPDFViewController).product = product
        }
    }

}
