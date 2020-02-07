//
//  ProductCardVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 28.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import Alamofire

class ProductCardVC: UIViewController {

    var product = Product()
    let libraryURL = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask)[0]

    
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var nrgLabel: UILabel!
    @IBOutlet var sizesLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons = [leftButton, rightButton]
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
        var imageURL: URL
        if product.image != nil {
            imageURL = libraryURL.appendingPathComponent(product.image!)
            if FileManager.default.fileExists(atPath: imageURL.path) {
                productImage.image = UIImage(contentsOfFile: imageURL.path)
            } else {
                downloadImage()
            }
        } else {
            productImage.image = #imageLiteral(resourceName: "no_photo-1")
        }
        self.nrgLabel.text = "\(product.power)W"
        self.sizesLabel.text = "\(product.sizes!)mm"
        self.weightLabel.text = "\(product.weight)kg"
        
        if product.doses != nil {
            rightButton.isEnabled = true
        } else {
            rightButton.isEnabled = false
        }
        
        if product.instruction != nil {
            leftButton.isEnabled = true
        } else {
            leftButton.isEnabled = false
        }
    }
    
    
    func downloadImage() {
           let destination: DownloadRequest.Destination = { _, _ in
               let fileURL = self.libraryURL.appendingPathComponent(self.product.image!)
               return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
           }
           
        let baseURL = "\(baseServerURL.image.rawValue)\(self.product.image!)"
           AF.download(baseURL, to: destination).response { response in
                      //debugPrint(response)
               if response.error == nil, let imageURL = response.fileURL {
                          //MARK: - Open PDF Document
                   DispatchQueue.main.async {
                       self.productImage.image = UIImage(contentsOfFile: imageURL.path)
                   }
               } else {
                   return
               }
           }
           
    }
    
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toInstruction":
            (segue.destination as! MainPDFViewController).documentType = TypeOfDocument.instruction
        case "toDoses":
            (segue.destination as! MainPDFViewController).documentType = TypeOfDocument.doses
        default:
            return
        }
        (segue.destination as! MainPDFViewController).product = product
        
    }

}
