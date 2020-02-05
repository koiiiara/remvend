//
//  InitialFiller.swift
//  Rem Vend
//
//  Created by Илья Миронов on 01.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation
import CoreData
import UIKit

let app = UIApplication.shared.delegate as? AppDelegate

func fillCoreData() {
    
    guard let context = app?.persistentContainer.viewContext else { return }
    
    //MARK: - Vendors
    let vendorBianchi = Vendor(context: context)
    vendorBianchi.name = VendorName.bianchi.rawValue
    
    let vendorNecta = Vendor(context: context)
    vendorNecta.name = VendorName.necta.rawValue
    
    let vendorFas = Vendor(context: context)
    vendorFas.name = VendorName.fas.rawValue
    
    let vendorMei = Vendor(context: context)
    vendorMei.name = VendorName.mei.rawValue
    
    let vendorVendotek = Vendor(context: context)
    vendorVendotek.name = VendorName.vendotek.rawValue
    
    let vendorTelemetron = Vendor(context: context)
    vendorTelemetron.name = VendorName.telemetron.rawValue
    
    

    //MARK: - Vending Coffee Machines
    
    
    //MARK: Bianchi Antares
    let product001 = Product(context: context)
    product001.vendor = vendorBianchi
    product001.model = "Antares"
    product001.type = TypeOfDevice.vendingCoffee.rawValue
    product001.power = 1000
    product001.sizes = "500x1000x1900"
    product001.weight = 150
    
    //MARK: Bianchi BVM 972
    let product002 = Product(context: context)
    product002.vendor = vendorBianchi
    product002.model = "BVM 972"
    product002.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Bianchi BVM 951
    let product003 = Product(context: context)
    product003.vendor = vendorBianchi
    product003.model = "BVM 951"
    product003.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Necta Canto
    let product004 = Product(context: context)
    product004.vendor = vendorNecta
    product004.model = "Canto"
    product004.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Necta Kikko ES6
    let product005 = Product(context: context)
    product005.vendor = vendorNecta
    product005.model = "Kikko ES6"
    product005.type = TypeOfDevice.vendingCoffee.rawValue
    product005.instruction = "instr_necta_kikko_es_6_ru.pdf"
    product005.doses = "dose_necta_kikko_es_6_layout_48.pdf"
    
    //MARK: Necta Kikko MAX
    let product006 = Product(context: context)
    product006.vendor = vendorNecta
    product006.model = "Kikko MAX"
    product006.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Necta Astro
    let product007 = Product(context: context)
    product007.vendor = vendorNecta
    product007.model = "Astro"
    product007.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Necta Brio
    let product008 = Product(context: context)
    product008.vendor = vendorNecta
    product008.model = "Brio"
    product008.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Necta Colibri
    let product009 = Product(context: context)
    product009.vendor = vendorNecta
    product009.model = "Colibri"
    product009.type = TypeOfDevice.vendingCoffee.rawValue

    //MARK: Necta Koro
    let product010 = Product(context: context)
    product010.vendor = vendorNecta
    product010.model = "Koro"
    product010.type = TypeOfDevice.vendingCoffee.rawValue
    
    //MARK: Necta Venezia
    let product011 = Product(context: context)
    product011.vendor = vendorNecta
    product011.model = "Venezia"
    product011.type = TypeOfDevice.vendingCoffee.rawValue

    //MARK: - Vending Snack Machines
    
    //MARK: Necta Snakky
    let product012 = Product(context: context)
    product012.vendor = vendorNecta
    product012.model = "Snakky"
    product012.type = TypeOfDevice.vendingSnack.rawValue
    
    //MARK: FAS 900
    let product013 = Product(context: context)
    product013.vendor = vendorFas
    product013.model = "900"
    product013.type = TypeOfDevice.vendingSnack.rawValue
    
    //MARK: FAS 1050
    let product014 = Product(context: context)
    product014.vendor = vendorFas
    product014.model = "1050"
    product014.type = TypeOfDevice.vendingSnack.rawValue
    
    //MARK: FAS 950
    let product015 = Product(context: context)
    product015.vendor = vendorFas
    product015.model = "950"
    product015.type = TypeOfDevice.vendingSnack.rawValue
    
    //MARK: - Payment Systems
    
    //MARK: MEI CashFlow 7900
    let product016 = Product(context: context)
    product016.vendor = vendorMei
    product016.model = "CF7900"
    product016.type = TypeOfDevice.coinAcceptor.rawValue
    product016.instruction = "pay_mei_cashflow_7000_7900_ru.pdf"
    
    //MARK: MEI CashFlow 8500
    let product017 = Product(context: context)
    product017.vendor = vendorMei
    product017.model = "CF8500"
    product017.type = TypeOfDevice.coinAcceptor.rawValue
    
    //MARK: Vendotek 4
    let product018 = Product(context: context)
    product018.vendor = vendorVendotek
    product018.model = "4"
    product018.type = TypeOfDevice.cashless.rawValue
    
    //MARK: Telemetron v2
    let product019 = Product(context: context)
    product019.vendor = vendorTelemetron
    product019.model = "v2"
    product019.type = TypeOfDevice.telemtry.rawValue
    
    do {
        try context.save()
    } catch let error {
        print(error)
    }
    
}
