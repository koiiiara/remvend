//
//  MenuTableViewCell.swift
//  Rem Vend
//
//  Created by Илья Миронов on 06.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
   
    static let reuseId = "MenuTableViewCell"
    let label = UILabel()
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .none
        contentView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        self.selectionStyle = .default
        
        //text position
        contentView.addSubview(label)
        //label.textAlignment = .right
        label.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        //label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32).isActive = true
        //label.heightAnchor.constraint(equalToConstant: 128).isActive = true
        label.font = UIFont.systemFont(ofSize: 17)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.textColor = .white
        //label.textColor = .secondaryLabel
        let separator = UIView()
        contentView.addSubview(separator)
        
        //seprator position
        separator.backgroundColor =  .white
        //#colorLiteral(red: 0.08744991571, green: 0.7839367986, blue: 0.7748929858, alpha: 1)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separator.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        separator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        separator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32).isActive = true
    }
    
    func configureFor(MenuItemAtIndex: Int) {
        label.text = MenuItem(rawValue: MenuItemAtIndex)?.description
        label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
   override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    if selected {
    } else {
    }
    }
    
    
}
