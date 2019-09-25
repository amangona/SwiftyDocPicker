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
    
    var documents = [Document]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        documentPicker = DocumentPicker(presentationController: self, delegate: self)
    }

    func didPickDocuments(documents: [Document]?) {
        documents?.forEach {
            self.documents.append($0)
        }
        collectionView.reloadData()
    }

    
    @IBAction func pickPressed(_ sender: Any) {
        documentPicker.present(from: view)
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return documents.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DocumentCell", for: indexPath) as! DocumentCell
        cell.configure(document: documents[indexPath.row])
        return cell
    }
    
    
    
}

