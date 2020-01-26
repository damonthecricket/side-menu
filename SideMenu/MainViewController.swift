//
//  ViewController.swift
//  SideMenu
//
//  Created by Damon Cricket on 26.01.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var blindView: UIVisualEffectView!
    var sideMenuViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blurEffect = UIBlurEffect(style: .light)
        blindView = UIVisualEffectView(effect: blurEffect)
        blindView.frame = view.bounds
        blindView.alpha = 0.0
        blindView.isHidden = true
        navigationController?.view.addSubview(blindView)
        
        sideMenuViewController = UIStoryboard(name: "Side", bundle: nil).instantiateInitialViewController()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer(sender:)))
        blindView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @IBAction func menuBarButtonItemTap(sender: UIBarButtonItem) {
        blindView.isHidden = false
        navigationController?.addChild(sideMenuViewController)
        let width = 2*view.bounds.width/3
        let height = view.bounds.height
        sideMenuViewController.view.frame = CGRect(x: -width, y: 0.0, width: width, height: height)
        navigationController?.view.addSubview(sideMenuViewController.view)
        sideMenuViewController.didMove(toParent: self)
        UIView.animate(withDuration: 0.2) {
            self.blindView.alpha = 0.6
            self.sideMenuViewController.view.frame = CGRect(x: 0.0, y: 0.0, width: width, height: height)
        }
    }
    
    @objc func tapGestureRecognizer(sender: UITapGestureRecognizer) {
        sideMenuViewController.willMove(toParent: nil)
        UIView.animate(withDuration: 0.2, animations: {
            self.blindView.alpha = 0.0
            let width = self.sideMenuViewController.view.frame.width
            let height = self.sideMenuViewController.view.frame.height
            self.sideMenuViewController.view.frame = CGRect(x: -width, y: 0.0, width: width, height: height)
        }, completion: {finished in
            self.blindView.isHidden = true
            self.sideMenuViewController.view.removeFromSuperview()
            self.sideMenuViewController.removeFromParent()
        })
    }
}

