//
//  instructionModelVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 10.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import CoreData
import PDFKit

class ModelsVC: UIViewController, NSFetchedResultsControllerDelegate, UITableViewDataSource, UITableViewDelegate {
  
    var products = [Product]()
    var selectedVendor = Vendor()
    var typeOfProduct = TypeOfDevice(rawValue: String())
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset.top = 16
    //MARK: - Sort models with predicate and create array
        let predicate = NSPredicate(format: "%K == %@", "type" ,"\(typeOfProduct!)")
        products = Array<AnyHashable>((selectedVendor.products?.filtered(using: predicate))!) as? [Product] ?? []
        products.sort{ $0.model! < $1.model! }
    }

    //MARK: - Comform to protocol UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
      }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let modelCell = cell as? ModelsCell else {
            return cell
            
        }
        
        let product = products[indexPath.row]
        modelCell.configure(for: product)
        return cell
      
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        switch typeOfProduct {
        case .billAcceptor:
            performSegue(withIdentifier: "paymentCard", sender: products[indexPath.row])
        case .coinAcceptor:
            performSegue(withIdentifier: "paymentCard", sender: products[indexPath.row])
        case .cashless:
            performSegue(withIdentifier: "paymentCard", sender: products[indexPath.row])
        case .telemtry:
            performSegue(withIdentifier: "paymentCard", sender: products[indexPath.row])
        default:
            performSegue(withIdentifier: "productCard", sender: products[indexPath.row])
        }
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "paymentCard":
            (segue.destination as? PaymentCardVC)!.product = (sender as? Product)!
        case "productCard":
            (segue.destination as? ProductCardVC)!.product = (sender as? Product)!
        default:
            return
        }
    }
}
