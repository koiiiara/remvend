//
//  ConfigureNavigationController.swift
//  Rem Vend
//
//  Created by Илья Миронов on 07.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation
import UIKit


func configureNavigationController(for controller: UINavigationController) {
    controller.navigationBar.setBackgroundImage(UIImage(), for: .default)
    controller.navigationBar.shadowImage = UIImage()
           if #available(iOS 11.0, *) {
               controller.navigationBar.prefersLargeTitles = true
           }
}


