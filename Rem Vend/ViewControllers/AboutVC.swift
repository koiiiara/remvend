//
//  AboutVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 10.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

    @IBOutlet var closeButton: UIButton!
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
