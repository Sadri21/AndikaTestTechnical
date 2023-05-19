//
//  ViewController.swift
//  AndikaTechnicalApp
//
//  Created by mmbs on 19/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoginOnClick(_ sender: Any) {
        let vc = LoginView()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

