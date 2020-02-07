//
//  ChildViewController.swift
//  FluidTransition
//
//  Created by Mikhail Rubanov on 07/07/2019.
//  Copyright © 2019 akaDuality. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
        
    var tableView: UITableView!
    //var menuTitle: UIImageView!
    var menuTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground
        view.backgroundColor = #colorLiteral(red: 0.2352941176, green: 0.3803921569, blue: 0.3803921569, alpha: 1)
        let cornerRadius: CGFloat = 38
        let maskLayer = CAShapeLayer()
        let bezierpath = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: [.bottomLeft, .topLeft],  cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        maskLayer.path = bezierpath
        view.layer.mask = maskLayer
        
        addTitle()
        configureTableView()
    }
    
    
    func addTitle() {
        menuTitle = UILabel()
        menuTitle.text = "Меню"
        menuTitle.textColor = .white
        menuTitle.textAlignment = .center
        menuTitle.font = UIFont.boldSystemFont(ofSize: 22)
        //menuTitle = UIImageView()
        //menuTitle.image = UIImage(named: "logo.png")
        //menuTitle.contentMode = .scaleAspectFit
        view.addSubview(menuTitle)
        menuTitle.translatesAutoresizingMaskIntoConstraints = false
        menuTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        menuTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        menuTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        menuTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        menuTitle.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    func configureTableView() {
        tableView = UITableView()
        tableView.backgroundColor = #colorLiteral(red: 0.2352941176, green: 0.3803921569, blue: 0.3803921569, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: "MenuTableViewCell")
        tableView.separatorStyle = .none
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: menuTitle.bottomAnchor, constant: 32).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
    }
    
  
    
    @objc func dismissSelf() {
        self.dismiss(animated: true)
    }
}


extension ChildViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.reuseId) as! MenuTableViewCell
        cell.configureFor(MenuItemAtIndex: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
  }
