//
//  ViewController.swift
//  SwiftyDocPicker
//
//  Created by Abraham Mangona on 9/14/19.
//  Copyright © 2019 Abraham Mangona. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DocumentDelegate {

    var documentPicker: DocumentPicker!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        documentPicker = DocumentPicker(presentationController: self, delegate: self)
    }

    func didPickDocuments(documents: [Document]) {
        // handle selected documents
    }

    
    @IBAction func pickPressed(_ sender: Any) {
        documentPicker.present(from: view)
    }
    


}

