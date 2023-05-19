//
//  DashboardView.swift
//  AndikaTechnicalApp
//
//  Created by mmbs on 19/05/23.
//

import UIKit

class DashboardView: UIViewController {

    @IBOutlet weak var profileView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
