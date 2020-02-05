//
//  File.swift
//  Rem Vend
//
//  Created by Илья Миронов on 04.02.2020.
//  Copyright © 2020 Ilya Mironov. All rights reserved.
//

import Foundation

func clearCache() {
    let fileManager = FileManager.default
    do {
        let documentDirectoryURL = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        let fileURLs = try fileManager.contentsOfDirectory(at: documentDirectoryURL, includingPropertiesForKeys: nil, options: [.skipsHiddenFiles, .skipsSubdirectoryDescendants])
        for url in fileURLs
        {
            try fileManager.removeItem(at: url)
        }
    } catch {
        print(error)
    }
}
