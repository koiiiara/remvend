//
//  FavouriteCell.swift
//  Rem Vend
//
//  Created by Илья Миронов on 07.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit

class FavouriteCell: UITableViewCell {

    //let product = Product()
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellView.layer.cornerRadius = 15
        cellView.layer.masksToBounds = false
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOpacity = 0.2
        cellView.layer.shadowOffset = CGSize(width: 0, height: 1)
        cellView.layer.shadowRadius = 1
        // Initialization code
    }

    func configure(for product: Product) {
        nameLabel.text = "\(product.vendor!.name!) \(product.model!)"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
