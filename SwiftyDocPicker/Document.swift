//
//  Document.swift
//  SwiftyDocPicker
//
//  Created by Abraham Mangona on 9/14/19.
//  Copyright © 2019 Abraham Mangona. All rights reserved.
//

import UIKit

class Document: UIDocument {
    
    var data: Data?
    
    override func contents(forType typeName: String) throws -> Any {
        guard let data = data else { return Data() }
        
        // This method is invoked whenever a document needs to be saved.
        // Particles documents are basically blobs of encoded particle systems.
        
        return try NSKeyedArchiver.archivedData(withRootObject: data, requiringSecureCoding: true)
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        
        // This method is invoked when loading a document from previsouly saved data.
        // Therefore, unarchive the stored data and use it as the particle system.
        
        guard let data = contents as? Data else { return }
        
        self.data = data
    }

    
}

extension URL {
    var isDirectory: Bool! {
        return (try? resourceValues(forKeys: [.isDirectoryKey]))?.isDirectory
    }
}
