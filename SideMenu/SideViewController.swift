//
//  SideViewController.swift
//  SideMenu
//
//  Created by Damon Cricket on 26.01.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class SideViewController: UIViewController {
    @IBOutlet weak var itemOne: UIButton?
    @IBOutlet weak var itemTwo: UIButton?
    @IBOutlet weak var itemThree: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemOne?.layer.borderColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).cgColor
        itemOne?.layer.borderWidth = 2.0
        itemOne?.layer.cornerRadius = 4.0
        
        itemTwo?.layer.borderColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).cgColor
        itemTwo?.layer.borderWidth = 2.0
        itemTwo?.layer.cornerRadius = 4.0
        
        itemThree?.layer.borderColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).cgColor
        itemThree?.layer.borderWidth = 2.0
        itemThree?.layer.cornerRadius = 4.0
    }

}
