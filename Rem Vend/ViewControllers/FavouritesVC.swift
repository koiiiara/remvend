//
//  FavouritesVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 07.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import CoreData

class FavouritesVC: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {

    var fetchController = NSFetchedResultsController<Product>()
    let app = UIApplication.shared.delegate as? AppDelegate
    var products = [Product]()
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationController(for: navigationController!)
        //MARK: - Construct Request
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
        let fetchRequest = NSFetchRequest<Product>(entityName: "Product")
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "vendor.name", ascending: true)]
        fetchController = NSFetchedResultsController(fetchRequest: fetchRequest,
                                                     managedObjectContext: app!.persistentContainer.viewContext,
                                                     sectionNameKeyPath: nil,
                                                     cacheName: nil)
        
        let predicate = NSPredicate(format: "%K == %@", "isFavorite" , "1")
        fetchRequest.predicate = predicate
        fetchController.delegate = self
        
        //MARK: Make request and copy to array
        do {
            try fetchController.performFetch()
        } catch {
            fatalError("Failed to fetch: \(error)")
        }
        products = fetchController.fetchedObjects ?? []
        
        for i in products {
            print("\(i.isFavorite)")
        }
        tableView.reloadData()
    }
    
    //MARK: - Comform to protocol UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
      }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteCell", for: indexPath)
        guard let favouriteCell = cell as? FavouriteCell else {
            return cell
        }
        let product = products[indexPath.row]
        favouriteCell.configure(for: product)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = products[indexPath.row]
        switch product.type {
        case "vendingCoffee", "vendingSnack", "coffeeMachine":
            performSegue(withIdentifier: "fromFavouriteToVending", sender: product)
        default:
            performSegue(withIdentifier: "fromFavouriteToInstruction", sender: product)
        }
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            
            tableView.beginUpdates()
            
            let product = products[indexPath.row]
            product.isFavorite = false
            products.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            app?.saveContext()
            
            tableView.endUpdates()
        }
        
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "fromFavouriteToVending":
            (segue.destination as? ProductCardVC)!.product = (sender as? Product)!
        case "fromFavouriteToInstruction":
            (segue.destination as? PaymentCardVC)!.product = (sender as? Product)!
        default:
            return
        }
        
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
