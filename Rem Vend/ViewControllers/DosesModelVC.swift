//
//  DosesModelVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 16.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import CoreData
import Alamofire

class DosesModelVC: UIViewController, NSFetchedResultsControllerDelegate, UITableViewDataSource, UITableViewDelegate {
    
        var products = [Product]()
        var selectedVendor = Vendor()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let predicate = NSPredicate(format: "%K == %@", "type", "vendingCoffee")
            products = Array<AnyHashable>((selectedVendor.products?.filtered(using: predicate))!) as? [Product] ?? []
            
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
        }
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
