//
//  ModelsCell.swift
//  Rem Vend
//
//  Created by Илья Миронов on 10.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import CoreData

class ModelsCell: UITableViewCell {
    
    var currentProduct = Product()
    @IBOutlet var modelLabel: UILabel!
    @IBOutlet var cellView: UIView!
    @IBAction func tapStar(_ sender: Any) {
        currentProduct.isFavorite = !currentProduct.isFavorite
        let app = UIApplication.shared.delegate as? AppDelegate
        app!.saveContext()
        if currentProduct.isFavorite {
            imageStar.setImage(UIImage(systemName: "star.fill"), for: .normal)
               } else {
                   imageStar.setImage(UIImage(systemName: "star"), for: .normal)
               }
    }
    
    
    @IBOutlet var imageStar: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellView.layer.cornerRadius = 15
        cellView.layer.masksToBounds = false
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOpacity = 0.2
        cellView.layer.shadowOffset = CGSize(width: 0, height: 1)
        cellView.layer.shadowRadius = 1
        imageStar.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        // Initialization code
    }

    func configure(for product: Product) {
        modelLabel.text = product.model
        if product.isFavorite {
            imageStar.imageView?.image = UIImage(systemName: "star.fill")
        } else {
            imageStar.imageView?.image = UIImage(systemName: "star")
        }
        currentProduct = product
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
