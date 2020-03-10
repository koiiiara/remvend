//
//  ChildViewController.swift
//  FluidTransition
//
//  Created by Mikhail Rubanov on 07/07/2019.
//  Copyright © 2019 akaDuality. All rights reserved.
//

import UIKit
import Foundation

class ChildViewController: UIViewController {
        
    var tableView: UITableView!
    //var menuTitle: UIImageView!
    var menuTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground
        view.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0.5098039216, blue: 0.4941176471, alpha: 1) //#colorLiteral(red: 0.07843137255, green: 0.6784313725, blue: 0.6470588235, alpha: 1)
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
        tableView.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0.5098039216, blue: 0.4941176471, alpha: 1)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath)
        guard let menuCell = cell as? MenuTableViewCell else {
            return cell
        }
        menuCell.configureFor(MenuItemAtIndex: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        //selectedCell.contentView.backgroundColor = #colorLiteral(red: 0.07843137255, green: 0.6784313725, blue: 0.6470588235, alpha: 1)
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred(intensity: 1)
        tappedMenu(with: MenuItem(rawValue: indexPath.row)!.description)
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let selectedCell:UITableViewCell = tableView.cellForRow(at: indexPath)!
        selectedCell.selectedBackgroundView?.backgroundColor = UIColor(white: 0, alpha: 0)
        //selectedCell.contentView.backgroundColor = #colorLiteral(red: 0.2352941176, green: 0.3803921569, blue: 0.3803921569, alpha: 0.7759257277)
        
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred(intensity: 1)
    }
    
  
    func tappedMenu(with name: String) {
      switch name {
      case "Контакты":
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "Contacts")
        present(vc, animated: true, completion: nil)
        print("Контакты")
          
      case "О нас":
          let storyBoard = UIStoryboard(name: "Main", bundle: nil)
          let vc = storyBoard.instantiateViewController(identifier: "About")
          present(vc, animated: true, completion: nil)
          print("О нас")
          
      case "Очистить данные":
          
        let menuAlert = UIAlertController(title: "Внимание!", message: "Вы действительно хотите удалить все загруженные инструкции и дозировки?", preferredStyle: .alert)
        let acceptButton = UIAlertAction(title: "Да", style: .destructive, handler: {_ in
        clearCache()
        let alert = UIAlertController(title: "Готово!", message: "Все загруженные данные были удалены!", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okButton)
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
            self.present(alert, animated: true)
        })
        let cancelButton = UIAlertAction(title: "Нет", style: .default, handler: nil)
        menuAlert.addAction(cancelButton)
        menuAlert.addAction(acceptButton)
        present(menuAlert, animated: true)
      
      
      case "Политика конфиденциальности":
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "Policy")
        present(vc, animated: true, completion: nil)
          print("Политика")
          
      default:
          return
        
        }
        
    }
}


