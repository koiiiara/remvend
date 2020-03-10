//
//  File.swift
//  Rem Vend
//
//  Created by Илья Миронов on 04.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation

func clearCache() {
  let documentsUrl =  FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first!

    do {
        let fileURLs = try FileManager.default.contentsOfDirectory(at: documentsUrl,
                                                                   includingPropertiesForKeys: nil,
                                                                   options: [.skipsHiddenFiles, .skipsSubdirectoryDescendants])

        for fileURL in fileURLs {
            if fileURL.pathExtension == "pdf" {
                try FileManager.default.removeItem(at: fileURL)
            }
        }
    } catch  { print(error) }
}
