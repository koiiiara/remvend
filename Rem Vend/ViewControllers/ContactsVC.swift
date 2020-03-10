//
//  ContactsVC.swift
//  Rem Vend
//
//  Created by Илья Миронов on 10.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ContactsVC: UIViewController {


    @IBOutlet var mapView: MKMapView!
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func siteButton(_ sender: Any) {
        let siteURL = URL(string: "https://remvend.ru/")!
        if UIApplication.shared.canOpenURL(siteURL) {
            UIApplication.shared.open(siteURL)
        }
    }
    
    @IBAction func mailButton(_ sender: Any) {
        let mailURL = URL(string: "mailto:info@remvend.ru")!
        if UIApplication.shared.canOpenURL(mailURL) {
            UIApplication.shared.open(mailURL)
        }
    }
    
    @IBOutlet var callButtonView: UIButton!
    
    @IBAction func callButtonAction(_ sender: Any) {
        let numberURL = URL(string: "telprompt://+79258551375")!
        if UIApplication.shared.canOpenURL(numberURL) {
            UIApplication.shared.open(numberURL)
        }
    }
    
    @IBAction func longPrassOnMap(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "Показать в программе:", preferredStyle: .actionSheet)
        let yandexMapButton = UIAlertAction(title: "Яндекс карты", style: .default, handler: {_ in
            self.openYandexMaps()
            return
        })
        let yandexNavButton = UIAlertAction(title: "Яндекс Навигатор", style: .default, handler: {_ in
            self.openYandexNav()
        })
//        let GoogleMapButton = UIAlertAction(title: "Google карты", style: .default, handler: nil)
        let cancelButton = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)

        alert.addAction(yandexMapButton)
        alert.addAction(yandexNavButton)
        //alert.addAction(GoogleMapButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
        

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let point = MKPointAnnotation()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mapView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6).isActive = true
        point.coordinate = CLLocationCoordinate2D(latitude: 55.804449, longitude: 37.750188)
        mapView.showAnnotations([point], animated: true)
        callButtonView.layer.cornerRadius = 10
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

    @objc func openYandexMaps() {
        let url = URL(string: "yandexmaps://yandex.ru/maps/org/1725584855")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
        
//        var url = URLComponents(string: "yandexmaps://maps.yandex.ru/")!
//        url.queryItems = [
//            URLQueryItem(name: "oid", value: "1725584855")]
//        if UIApplication.shared.canOpenURL(url.url!) {
//            UIApplication.shared.open(url.url!)
//        }
    }
    
    @objc func openYandexNav() {
        //let url = URL(string: "yandexnavi://show_point_on_map?lat=55.804449&lon=37  .750188&zoom=12&no-balloon=0&desc=Rem%20Vend")!
        
        var url = URLComponents(string: "yandexnavi://show_point_on_map")!
        url.queryItems = [
            URLQueryItem(name: "lat", value: "55.804449"),
            URLQueryItem(name: "lon", value: "37.750188"),
            URLQueryItem(name: "zoom", value: "12"),
            URLQueryItem(name: "no-balloon", value: "0"),
            URLQueryItem(name: "desc", value: "Rem Vend")
        ]
        if UIApplication.shared.canOpenURL(url.url!) {
            UIApplication.shared.open(url.url!)
        }
    }
    
}
