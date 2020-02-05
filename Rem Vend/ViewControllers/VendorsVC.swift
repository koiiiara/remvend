//
//  InstructionVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 01.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import CoreData

class VendorsVC: UIViewController, NSFetchedResultsControllerDelegate, UITableViewDataSource, UITableViewDelegate {

    var typeOfProduct = TypeOfDevice(rawValue: String())

    @IBOutlet var tableView: UITableView!
    
    var fetchController = NSFetchedResultsController<Vendor>()
    let app = UIApplication.shared.delegate as? AppDelegate
    var vendors = [Vendor]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset.top = 16
        //MARK: - Construct Request
        let fetchRequest = NSFetchRequest<Vendor>(entityName: "Vendor")
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
        fetchController = NSFetchedResultsController(fetchRequest: fetchRequest,
                                                     managedObjectContext: app!.persistentContainer.viewContext,
                                                     sectionNameKeyPath: nil,
                                                     cacheName: nil)
        
        let predicate = NSPredicate(format: "ANY %K == %@", "products.type" ,"\(typeOfProduct!)")
        fetchRequest.predicate = predicate
        fetchController.delegate = self
        
        //MARK: Make request and copy to array
        do {
            try fetchController.performFetch()
        } catch {
            fatalError("Failed to fetch: \(error)")
        }
        vendors = fetchController.fetchedObjects ?? []
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Comform to protocol UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vendors.capacity
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let vendorCell = cell as? VendorsCell else {
            return cell
        }
        
        let vendor = vendors[indexPath.row]
        vendorCell.configure(for: vendor)
//        cell.textLabel?.text = vendor.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "InstructionModelVC", sender: vendors[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InstructionModelVC" {
            (segue.destination as! ModelsVC).selectedVendor = (sender as? Vendor)!
            (segue.destination as! ModelsVC).typeOfProduct = typeOfProduct
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
