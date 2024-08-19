//
//  CollectionViewCell.swift
//  stackView
//
//  Created by yusuf ergül on 11.06.2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var tema: UIImageView!
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var headIcon: UIButton!
    
    override func awakeFromNib() {
        view.layer.cornerRadius = 35
    }
}
