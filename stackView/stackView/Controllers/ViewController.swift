//
//  ViewController.swift
//  stackView
//
//  Created by yusuf ergül on 5.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var buton: UIButton!
    @IBOutlet weak var greyView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var secondButon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       // setupButtons()
    }
    
    
    
    
    
    
    func setupButtons () {
        secondButon.layer.cornerRadius = 5
        secondButon.layer.borderWidth = 1
        secondButon.layer.borderColor = UIColor.systemBlue.cgColor
        buton.layer.cornerRadius = 5
        buton.layer.borderWidth = 1
        buton.layer.borderColor = UIColor.systemBlue.cgColor
        greyView.layer.cornerRadius = 5
        blueView.layer.cornerRadius = 5
        headerView.layer.cornerRadius = 10
        headerView.layer.shadowRadius = 10
    }

}

