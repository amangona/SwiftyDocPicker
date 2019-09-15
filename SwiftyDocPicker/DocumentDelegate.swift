//
//  DocumentDelegate.swift
//  SwiftyDocPicker
//
//  Created by Abraham Mangona on 9/14/19.
//  Copyright © 2019 Abraham Mangona. All rights reserved.
//

import Foundation

public enum SourceType: Int {
    case files
    case folder
}

protocol DocumentDelegate: class {
    func didPickDocuments(documents: [Document]?)
}
