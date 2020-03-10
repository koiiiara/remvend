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
    
    let vendorCrane = Vendor(context: context)
    vendorCrane.name = VendorName.crane.rawValue
    
    let vendorJofemar = Vendor(context: context)
    vendorJofemar.name = VendorName.jofemar.rawValue
    
    let vendorRheavendors = Vendor(context: context)
    vendorRheavendors.name = VendorName.rheavendors.rawValue
    
    let vendorSaeco = Vendor(context: context)
    vendorSaeco.name = VendorName.saeco.rawValue
    
    let vendorUnicum = Vendor(context: context)
    vendorUnicum.name = VendorName.unicum.rawValue
    
    let vendorVendShop = Vendor(context: context)
    vendorVendShop.name = VendorName.vendshop.rawValue
    
    let vendorCashCode = Vendor(context: context)
    vendorCashCode.name = VendorName.cashcode.rawValue
    
    let vendorCoinCo = Vendor(context: context)
    vendorCoinCo.name = VendorName.coinco.rawValue
    
    let vendorGpt = Vendor(context: context)
    vendorGpt.name = VendorName.gpt.rawValue
    
    let vendorIct = Vendor(context: context)
    vendorIct.name = VendorName.ict.rawValue
    
    let vendorItl = Vendor(context: context)
    vendorItl.name = VendorName.itl.rawValue
    
    let vendorJcm = Vendor(context: context)
    vendorJcm.name = VendorName.jcm.rawValue
    
    let vendorNri = Vendor(context: context)
    vendorNri.name = VendorName.nri.rawValue
    
    let vendorEphor = Vendor(context: context)
    vendorEphor.name = VendorName.ephor.rawValue
    
    //MARK:  Bianchi Antares
    let product001 = Product(context: context)
    product001.vendor = vendorBianchi
    product001.model = "Antares"
    product001.type = TypeOfDevice.vendingCoffee.rawValue
    product001.instruction = "instr_bianchi_antares.pdf"
    product001.image = "img_bianchi_antares.png"
    product001.sizes = "1630x585x649"
    product001.weight = 110
    product001.power = 2100
    
    //MARK: Bianchi BVM 951
    let product002 = Product(context: context)
    product002.vendor = vendorBianchi
    product002.model = "BVM 951"
    product002.type = TypeOfDevice.vendingCoffee.rawValue
    product002.instruction = "instr_bianchi_bvm_951.pdf"
    product002.image = "img_bianchi_bvm_951.png"
    product002.sizes = "1630x585x649"
    product002.weight = 110
    product002.power = 2400
    
    //MARK: Bianchi BVM 971
    let product003 = Product(context: context)
    product003.vendor = vendorBianchi
    product003.model = "BVM 971"
    product003.type = TypeOfDevice.vendingCoffee.rawValue
    product003.instruction = "instr_bianchi_bvm_971.pdf"
    product003.image = "img_bianchi_bvm_971.png"
    product003.sizes = "1830x657x730"
    product003.weight = 190
    product003.power = 2400
    
    //MARK: Bianchi BVM 681
    let product004 = Product(context: context)
    product004.vendor = vendorBianchi
    product004.model = "BVM 681"
    product004.type = TypeOfDevice.vendingSnack.rawValue
    product004.instruction = "instr_bianchi_bvm_681_685_671_662.pdf"
    product004.image = "img_bianchi_bvm_681.png"
    product004.sizes = "1830x850x750"
    product004.weight = 280
    product004.power = 500
    
    //MARK: Bianchi LEI 400
    let product005 = Product(context: context)
    product005.vendor = vendorBianchi
    product005.model = "LEI 400"
    product005.type = TypeOfDevice.vendingCoffee.rawValue
    product005.instruction = "instr_bianchi_lei_400_700.pdf"
    product005.image = "img_bianchi_lei_400.png"
    product005.sizes = "1630x650x770"
    product005.weight = 128
    product005.power = 3500
    
    //MARK: Crane 167
    let product006 = Product(context: context)
    product006.vendor = vendorCrane
    product006.model = "167"
    product006.type = TypeOfDevice.vendingSnack.rawValue
    product006.instruction = "instr_crane_167.pdf"
    product006.image = "img_crane_167.png"
    product006.sizes = "1830x970x900"
    product006.weight = 350
    product006.power = 1000
    
    //MARK: FAS 900
    let product007 = Product(context: context)
    product007.vendor = vendorFas
    product007.model = "900"
    product007.type = TypeOfDevice.vendingSnack.rawValue
    product007.instruction = "instr_fas_fast_900.pdf"
    product007.image = "img_fas_900.png"
    product007.sizes = "1830x900x790"
    product007.weight = 260
    product007.power = 750
    
    //MARK: FAS 1050
    let product008 = Product(context: context)
    product008.vendor = vendorFas
    product008.model = "1050"
    product008.type = TypeOfDevice.vendingSnack.rawValue
    product008.instruction = "instr_fas_fast_1050.pdf"
    product008.image = "img_fas_1050.png"
    product008.sizes = "1830x1050x790"
    product008.weight = 330
    product008.power = 750
    
    //MARK: FAS Fashion
    let product009 = Product(context: context)
    product009.vendor = vendorFas
    product009.model = "Fashion"
    product009.type = TypeOfDevice.vendingCoffee.rawValue
    product009.instruction = "instr_fas_fashion.pdf"
    product009.image = "img_fas_fashion.png"
    product009.sizes = "1830x600x690"
    product009.weight = 140
    product009.power = 3000
    
    //MARK: Jofemar Coffemar s-500
    let product010 = Product(context: context)
    product010.vendor = vendorJofemar
    product010.model = "Coffemar S-500"
    product010.type = TypeOfDevice.vendingCoffee.rawValue
    product010.instruction = "instr_jofemar_coffeemar_s_500.pdf"
    product010.image = "img_joffemar_coffeemar_s500.png"
    product010.sizes = "1825x600x603"
    product010.weight = 136
    product010.power = 1800
    
    //MARK: Jofemar Coffemar g-500
    let product011 = Product(context: context)
    product011.vendor = vendorJofemar
    product011.model = "Coffemar G-500"
    product011.type = TypeOfDevice.vendingCoffee.rawValue
    product011.instruction = "instr_jofemar_coffeemar_g_500.pdf"
    product011.image = "img_joffemar_coffeemar_g500.png"
    product011.sizes = "1825x600x603"
    product011.weight = 147
    product011.power = 1100
    
    //MARK: Jofemar Coffemar g-250
    let product012 = Product(context: context)
    product012.vendor = vendorJofemar
    product012.model = "Coffemar G-250"
    product012.type = TypeOfDevice.vendingCoffee.rawValue
    product012.instruction = "instr_jofemar_coffeemar_g_250.pdf"
    product012.image = "img_joffemar_coffeemar_g250.png"
    product012.sizes = "1500x500x561"
    product012.weight = 100
    product012.power = 1100
    
    //MARK: Jofemar Coffemar g-250
    let product013 = Product(context: context)
    product013.vendor = vendorJofemar
    product013.model = "Coffemar G-250"
    product013.type = TypeOfDevice.vendingCoffee.rawValue
    product013.instruction = "instr_jofemar_coffeemar_g_250.pdf"
    product013.image = "img_joffemar_coffeemar_g250.png"
    product013.sizes = "1500x500x561"
    product013.weight = 100
    product013.power = 1100
    
    //MARK: Necta Kikko ES6
    let product014 = Product(context: context)
    product014.vendor = vendorNecta
    product014.model = "Kikko ES6"
    product014.type = TypeOfDevice.vendingCoffee.rawValue
    product014.instruction = "instr_necta_kikko_es_6_ru.pdf"
    product014.doses = "dose_necta_kikko_es_6_layout_48.pdf"
    product014.image = "img_necta_kikko_es6.png"
    product014.sizes = "1700x540x690"
    product014.weight = 114
    product014.power = 1800
    
    //MARK: Necta Snakky MAX
    let product015 = Product(context: context)
    product015.vendor = vendorNecta
    product015.model = "Snakky MAX"
    product015.type = TypeOfDevice.vendingSnack.rawValue
    product015.instruction = "instr_necta_snakky.pdf"
    product015.image = "img_necta_snakky_max.png"
    product015.sizes = "1700x701x854"
    product015.weight = 190
    product015.power = 500
    
    //MARK: Necta Snakky LX
    let product016 = Product(context: context)
    product016.vendor = vendorNecta
    product016.model = "Snakky LX"
    product016.type = TypeOfDevice.vendingSnack.rawValue
    product016.instruction = "instr_necta_snakky.pdf"
    product016.image = "img_necta_snakky_lx.png"
    product016.sizes = "1700x701x855"
    product016.weight = 190
    product016.power = 500
    
    //MARK: Necta Kikko MAX
    let product017 = Product(context: context)
    product017.vendor = vendorNecta
    product017.model = "Kikko MAX"
    product017.type = TypeOfDevice.vendingCoffee.rawValue
    product017.instruction = "instr_necta_kikko_max.pdf"
    product017.image = "img_necta_kikko_max.png"
    product017.sizes = "1800x540x650"
    product017.weight = 126
    product017.power = 1800
    
    //MARK: Necta Colibri
    let product018 = Product(context: context)
    product018.vendor = vendorNecta
    product018.model = "Colibri"
    product018.type = TypeOfDevice.vendingCoffee.rawValue
    product018.instruction = "instr_necta_colibri_c5.pdf"
    product018.doses = "dose_necta_colibri.pdf"
    product018.image = "img_necta_colibri.png"
    product018.sizes = "650x410x490"
    product018.weight = 38
    product018.power = 1850
   
    //MARK: Rheavendors Luce 2X
    let product019 = Product(context: context)
    product019.vendor = vendorRheavendors
    product019.model = "Luce 2X"
    product019.type = TypeOfDevice.vendingCoffee.rawValue
    product019.instruction = "instr_rheavendors_luce_x2.pdf"
    product019.image = "img_rheavendors_luce_x2.png"
    product019.sizes = "1830x640x705"
    product019.weight = 165
    product019.power = 2800
    
    //MARK: Rheavendors Sagoma H5/H6/H7
    let product020 = Product(context: context)
    product020.vendor = vendorRheavendors
    product020.model = "Sagoma H5/H6/H7"
    product020.type = TypeOfDevice.vendingCoffee.rawValue
    product020.instruction = "instr_rheavendors_sagoma_h.pdf"
    product020.image = "img_rheavendors_sagoma_h.png"
    product020.sizes = "1830x625x500"
    product020.weight = 115
    product020.power = 1700
    
    //MARK: Rheavendors Barista XX
    let product021 = Product(context: context)
    product021.vendor = vendorRheavendors
    product021.model = "Barista XX"
    product021.type = TypeOfDevice.coffeeMachine.rawValue
    product021.instruction = "instr_rheavendors_barista_xx.pdf"
    product021.image = "img_rheavendors_barista.png"
    product021.sizes = "600x300x455"
    product021.weight = 30
    product021.power = 2100
    
    //MARK: Rheavendors Cino XS
    let product022 = Product(context: context)
    product022.vendor = vendorRheavendors
    product022.model = "Cino XS"
    product022.type = TypeOfDevice.coffeeMachine.rawValue
    product022.instruction = "instr_rheavendors_cino_xs.pdf"
    product022.image = "img_rheavendors_sino.png"
    product022.sizes = "618x420x585"
    product022.weight = 40
    product022.power = 1700
    
    //MARK: Saeco Cristallo FS400
    let product023 = Product(context: context)
    product023.vendor = vendorSaeco
    product023.model = "Cristallo FS400"
    product023.type = TypeOfDevice.vendingCoffee.rawValue
    product023.instruction = "instr_saeco_cristallo_fs400.pdf"
    product023.image = "img_saeco_cristallo_fs400.png"
    product023.sizes = "1600x577x557"
    product023.weight = 75
    product023.power = 2000
    
    //MARK: Saeco Diamante
    let product024 = Product(context: context)
    product024.vendor = vendorSaeco
    product024.model = "Diamante"
    product024.type = TypeOfDevice.vendingSnack.rawValue
    product024.instruction = "instr_saeco_diamante.pdf"
    product024.image = "img_saeco_diamante.png"
    product024.sizes = "1890x720x820"
    product024.weight = 240
    product024.power = 2500
    
    //MARK: Saeco Cristallo 400 EVO
    let product025 = Product(context: context)
    product025.vendor = vendorSaeco
    product025.model = "Cristallo 400 EVO"
    product025.type = TypeOfDevice.vendingCoffee.rawValue
    product025.instruction = "instr_saeco_cristallo_400_evo.pdf"
    product025.image = "img_saeco_cristallo_400_evo.png"
    product025.sizes = "1700x580x670"
    product025.weight = 120
    product025.power = 2500
    
    //MARK: Saeco Cristallo 600 EVO
    let product026 = Product(context: context)
    product026.vendor = vendorSaeco
    product026.model = "Cristallo 600 EVO"
    product026.type = TypeOfDevice.vendingCoffee.rawValue
    product026.instruction = "instr_saeco_cristallo_600_evo.pdf"
    product026.image = "img_saeco_cristallo_600_evo.png"
    product026.sizes = "1830x580x670"
    product026.weight = 125
    product026.power = 3000
    
    //MARK: Unicum Rosso
    let product027 = Product(context: context)
    product027.vendor = vendorUnicum
    product027.model = "Rosso"
    product027.type = TypeOfDevice.vendingCoffee.rawValue
    product027.instruction = "instr_unicum_rosso.pdf"
    product027.image = "img_unicum_rosso_classic.png"
    product027.sizes = "1850x600x670"
    product027.weight = 130
    product027.power = 1500
    
    //MARK: Unicum Rosso Touch
    let product028 = Product(context: context)
    product028.vendor = vendorUnicum
    product028.model = "Rosso Touch"
    product028.type = TypeOfDevice.vendingCoffee.rawValue
    product028.instruction = "instr_unicum_rosso_touch.pdf"
    product028.image = "img_unicum_rosso_touch.png"
    product028.sizes = "1850x600x675"
    product028.weight = 150
    product028.power = 1900
    
    //MARK: Unicum FoodBox Long
    let product029 = Product(context: context)
    product029.vendor = vendorUnicum
    product029.model = "FoodBox Long"
    product029.type = TypeOfDevice.vendingSnack.rawValue
    product029.instruction = "instr_unicum_foodbox_long.pdf"
    product029.image = "img_unicum_foodbox_long.png"
    product029.sizes = "1850x1280x820"
    product029.weight = 370
    product029.power = 700
    
    //MARK: Unicum FoodBox
    let product030 = Product(context: context)
    product030.vendor = vendorUnicum
    product030.model = "FoodBox"
    product030.type = TypeOfDevice.vendingSnack.rawValue
    product030.instruction = "instr_unicum_foodbox.pdf"
    product030.image = "img_unicum_foodbox.png"
    product030.sizes = "1850x980x820"
    product030.weight = 300
    product030.power = 700
    
    //MARK: Unicum Rosso Touch ToGo
    let product031 = Product(context: context)
    product031.vendor = vendorUnicum
    product031.model = "Rosso Touch ToGo"
    product031.type = TypeOfDevice.vendingCoffee.rawValue
    product031.instruction = "instr_unicum_rosso_touch_2go.pdf"
    product031.image = "img_unicum_rosso_togo.png"
    product031.sizes = "1850x770x730"
    product031.weight = 200
    product031.power = 1900
    
    //MARK: Unicum Nero Touch
    let product032 = Product(context: context)
    product032.vendor = vendorUnicum
    product032.model = "Nero Touch"
    product032.type = TypeOfDevice.vendingCoffee.rawValue
    product032.instruction = "instr_unicum_nero_touch.pdf"
    product032.image = "img_unicum_nero.png"
    product032.sizes = "840x385x495"
    product032.weight = 55
    product032.power = 1800
    
    //MARK: VendShop SM Grand Multipay
    let product033 = Product(context: context)
    product033.vendor = vendorVendShop
    product033.model = "SM Grand Multipay"
    product033.type = TypeOfDevice.vendingSnack.rawValue
    product033.instruction = "instr_vendshop_sm_grand_multipay.pdf"
    product033.image = "img_vendshop_sm_grand.png"
    product033.sizes = "1500x800x315"
    product033.weight = 60
    product033.power = 700
    
    //MARK: VendShop SM 6367
    let product034 = Product(context: context)
    product034.vendor = vendorVendShop
    product034.model = "SM 6367"
    product034.type = TypeOfDevice.vendingSnack.rawValue
    product034.instruction = "instr_vendshop_sm6367.pdf"
    product034.image = "img_vendshop_sm_6367.png"
    product034.sizes = "1920x960x870"
    product034.weight = 320
    product034.power = 700
    
    //MARK: - Payment Systems
    
    //MARK: CashCode FL
    let product035 = Product(context: context)
    product035.vendor = vendorCashCode
    product035.model = "FL"
    product035.type = TypeOfDevice.billAcceptor.rawValue
    product035.instruction = "pay_cashcode_fl.pdf"
    product035.image = "img_cashcode_fl.png"
    
    //MARK: CashCode SM
    let product036 = Product(context: context)
    product036.vendor = vendorCashCode
    product036.model = "SM"
    product036.type = TypeOfDevice.billAcceptor.rawValue
    product036.instruction = "pay_cashcode_sm.pdf"
    product036.image = "img_cashcode_sm.png"
    
    //MARK: CoinCo G2
    let product037 = Product(context: context)
    product037.vendor = vendorCoinCo
    product037.model = "G2"
    product037.type = TypeOfDevice.coinAcceptor.rawValue
    product037.instruction = "pay_coinco_g2_800_ru.pdf"
    product037.image = "img_coinco_g2.png"
    
    //MARK: GPT Aurora
    let product038 = Product(context: context)
    product038.vendor = vendorGpt
    product038.model = "Aurora"
    product038.type = TypeOfDevice.billAcceptor.rawValue
    product038.instruction = "pay_gpt_aurora.pdf"
    product038.image = "img_gpt_aurora.png"
    
    //MARK: ICT A7/V7
    let product039 = Product(context: context)
    product039.vendor = vendorIct
    product039.model = "A7/V7"
    product039.type = TypeOfDevice.billAcceptor.rawValue
    product039.instruction = "pay_ict_a7v7.pdf"
    product039.image = "img_ict_a7v7.png"
    
    //MARK: ITL NV9
    let product040 = Product(context: context)
    product040.vendor = vendorItl
    product040.model = "NV9"
    product040.type = TypeOfDevice.billAcceptor.rawValue
    product040.instruction = "pay_itl_nv9.pdf"
    product040.image = "img_itl_nv9.png"
    
    //MARK: ITL NV7
    let product041 = Product(context: context)
    product041.vendor = vendorItl
    product041.model = "NV7"
    product041.type = TypeOfDevice.billAcceptor.rawValue
    product041.instruction = "pay_itl_nv7.pdf"
    product041.image = "img_itl_nv9.png"
    
    //MARK: JCM DBV-30
    let product042 = Product(context: context)
    product042.vendor = vendorJcm
    product042.model = "DBV-30"
    product042.type = TypeOfDevice.billAcceptor.rawValue
    product042.instruction = "pay_dbv_30x.pdf"
    product042.image = "img_jcm_dbv_30.png"
    
    //MARK: MEI CashFlow CF7000
    let product043 = Product(context: context)
    product043.vendor = vendorMei
    product043.model = "CashFlow CF7000"
    product043.type = TypeOfDevice.coinAcceptor.rawValue
    product043.instruction = "pay_mei_cashflow_7000_7900_ru.pdf"
    product043.image = "img_mei_cf_7700.png"
    
    //MARK: MEI CashFlow CF560
    let product044 = Product(context: context)
    product044.vendor = vendorMei
    product044.model = "CashFlow CF560"
    product044.type = TypeOfDevice.coinAcceptor.rawValue
    product044.instruction = "pay_mei_cashflow_560_ru.pdf"
    product044.image = "img_mei_cf_560.png"
    
    //MARK: MEI VN2600
    let product045 = Product(context: context)
    product045.vendor = vendorMei
    product045.model = "VN2600"
    product045.type = TypeOfDevice.billAcceptor.rawValue
    product045.instruction = "pay_mei_vn2600.pdf"
    product045.image = "img_mei_vn_2600.png"
    
    //MARK: NRI Currenza C2 Blue
    let product046 = Product(context: context)
    product046.vendor = vendorNri
    product046.model = "Currenza C2 Blue"
    product046.type = TypeOfDevice.coinAcceptor.rawValue
    product046.instruction = "pay_nri_currenza_c2.pdf"
    product046.image = "img_nri_currebze_c2_blue.png"
    
    //MARK: Vendotek v2
    let product047 = Product(context: context)
    product047.vendor = vendorVendotek
    product047.model = "2"
    product047.type = TypeOfDevice.cashless.rawValue
    product047.instruction = "pay_vendotek_2.pdf"
    
    //MARK: Vendotek v3
    let product048 = Product(context: context)
    product048.vendor = vendorVendotek
    product048.model = "3"
    product048.type = TypeOfDevice.cashless.rawValue
    product048.instruction = "pay_vendotek_3.pdf"
    product048.image = "img_vendotek_3.png"
    
    //MARK: Vendotek VX
    let product049 = Product(context: context)
    product049.vendor = vendorVendotek
    product049.model = "VX"
    product049.type = TypeOfDevice.cashless.rawValue
    product049.instruction = "pay_vendotek_vx.pdf"
    product049.image = "img_vendotek_vx.png"
    
    //MARK: Telemetron 2
    let product050 = Product(context: context)
    product050.vendor = vendorTelemetron
    product050.model = "v2"
    product050.type = TypeOfDevice.telemtry.rawValue
    product050.instruction = "instr_telemetron_2.pdf"
    product050.image = "img_telemetron_v2.png"
    
    //MARK: Ephor
    let product051 = Product(context: context)
    product051.vendor = vendorEphor
    product051.model = "modem"
    product051.type = TypeOfDevice.telemtry.rawValue
    product051.instruction = "instr_ephor.pdf"
    product051.image = "img_ephor_01.png"
    
    do {
        try context.save()
    } catch let error {
        print(error)
    }
    
}
