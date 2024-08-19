//
//  TableViewCell.swift
//  stackView
//
//  Created by yusuf ergül on 11.06.2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var buton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var tema: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buton.layer.cornerRadius = 5
        buton.layer.borderWidth = 1
        buton.layer.borderColor = UIColor.systemBlue.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
