//
//  DocumentCell.swift
//  SwiftyDocPicker
//
//  Created by Abraham Mangona on 9/25/19.
//  Copyright © 2019 Abraham Mangona. All rights reserved.
//

import UIKit

class DocumentCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 8
    }
    
    func configure(document: Document) {
        self.titleLabel.text = document.fileURL.lastPathComponent
        self.setGradientBackgroundColor(colorOne: Colors().randomColors.first!, colorTwo: Colors().randomColors.last!)
        
    }
    
}
