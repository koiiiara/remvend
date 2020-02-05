//
//  VendorsCell.swift
//  Rem Vend
//
//  Created by Илья Миронов on 10.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit


class VendorsCell: UITableViewCell {

    
    @IBOutlet var cellView: UIView!
    @IBOutlet var vendorNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellView.layer.cornerRadius = 15
        cellView.layer.masksToBounds = false
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOpacity = 0.2
        cellView.layer.shadowOffset = CGSize(width: 0, height: 1)
        cellView.layer.shadowRadius = 1
    }
    
    func configure(for vendor: Vendor) {
        vendorNameLabel.text = vendor.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
