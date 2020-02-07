//
//  MenuItem.swift
//  Rem Vend
//
//  Created by Илья Миронов on 06.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation

enum MenuItem: Int, CustomStringConvertible {
    case about
    case contacts
    //case account
    case clear
    case privacy
    
    var description: String {
        switch self {
        case .contacts: return "Контакты"
        //case .account: return ""
        case .about: return "О нас"
        case .clear: return "Очистить данные"
        case .privacy: return "Политика конфиденциальности"
        }
    }
}
