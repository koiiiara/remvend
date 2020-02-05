//
//  TypeOfDevice.swift
//  Rem Vend
//
//  Created by Илья Миронов on 01.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation


//MARK: - Types of Devices
enum TypeOfDevice: String {
    case vendingCoffee
    case vendingSnack
    case coffeeMachine
    case coinAcceptor
    case billAcceptor
    case cashless
    case telemtry
}
//MARK:  END -
enum Sections: String {
    case machines
    case payment
    case telemetry
}

enum TypeOfDocument: String {
    case doses
    case instruction
}
