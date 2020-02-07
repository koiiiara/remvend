//
//  Vendors.swift
//  Rem Vend
//
//  Created by Илья Миронов on 01.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation
//MARK: - Vendor's Names list


enum VendorName: String {
    //MARK: Vending Machines
    case unicum = "Unicum"
    case necta = "Necta"
    case vendshop = "VendShop"
    case saeco = "Saeco"
    case bianchi = "Bianchi"
    case fas = "FAS"
    case rheavendors = "Rheavendors"
    
    //MARK:  Payment Systems
    case paytech = "PayTech"
    case mei = "MEI"
    case coinco = "Coinco"
    case vendotek = "Vendotek"
    case pax = "PAX"
    case nri = "NRI"
    
    //MARK: Coffee Machines
    case delonghi = "Delonghi"
    case jura = "Jura"
    case philips = "Philips"
    
    //MARK: Telemetry
    case telemetron = "Telemetron"
}

//extension VendorName: CustomStringConvertible {
//    
//}
