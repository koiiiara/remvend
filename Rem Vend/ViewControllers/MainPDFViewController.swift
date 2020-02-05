//
//  MainPDFViewController.swift
//  Rem Vend
//
//  Created by Илья Миронов on 21.01.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import UIKit
import Alamofire
import PDFKit

class MainPDFViewController: UIViewController {

    var product = Product()
    var documentType = TypeOfDocument.instruction
    var pdfName: String {
        get {
            var url = String()
            switch documentType {
            case .instruction:
                url = product.instruction!
            case .doses:
                url = product.doses!
            }
            return url
        }
    }
    
    let libraryURL = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask)[0]
    
    @IBOutlet var progressLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let pdfURL = libraryURL.appendingPathComponent(pdfName)
        
        //MARK: - Checking exist file in the library folder
        if FileManager.default.fileExists(atPath: pdfURL.path) {
            openLocalDocument(pdfURL: pdfURL)
        } else {
            openRemoteDocument()
        }
    }
    
    //MARK: - Open local file
    func openLocalDocument(pdfURL: URL) {
        let pdfView = PDFView(frame: super.view.frame)
        self.view.addSubview(pdfView)
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        let document = PDFDocument(url: pdfURL)
        //print(pdfURL.path)
        pdfView.document = document
        pdfView.autoScales = true
        self.progressLabel.isHidden = true
        self.progressBar.isHidden = true
    }
    
    
    //MARK: - Download and open pdf file from network
    func openRemoteDocument() {
        var baseURL = String()
        switch documentType {
        case .instruction:
            baseURL = "\(baseServerURL.instruction.rawValue)\(product.instruction!)"
        case .doses:
            baseURL = "\(baseServerURL.doses.rawValue)\(product.doses!)"
        }
        let destination: DownloadRequest.Destination = { _, _ in
            let fileURL = self.libraryURL.appendingPathComponent(self.pdfName)
            return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
        }
        
        AF.download(baseURL, to: destination).response { response in
                   //debugPrint(response)

            if response.error == nil, let pdfURL = response.fileURL {
                       //MARK: - Open PDF Document
                DispatchQueue.main.async {
                        self.openLocalDocument(pdfURL: pdfURL)
                }
            }
        }
     
        //MARK: - Progress bar and progress label
                .downloadProgress(closure: { ( progress) in
                        self.progressBar.setProgress(Float(progress.fractionCompleted), animated: true)
                        if progress.fractionCompleted == 1.0 {
                            self.progressLabel.text = "Готово!"
                        } else {
                            self.progressLabel.text = "Загрузка файла \(Int(progress.fractionCompleted * 100.0))%"
                        }
                    })
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
