//
//  SkillsViewController.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-05.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {

    @IBOutlet weak var AnimatedView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2) {
            self.AnimatedView.backgroundColor = UIColor.red
        }
        UIView.animate(withDuration: 10, delay: 4, options: .curveEaseOut, animations: {
            self.AnimatedView.alpha = CGFloat(0)
        },completion: nil)
            
        }

    @IBAction func DissMissView(_ sender: UIButton) {        self.dismiss(animated: true) {
            return
        }
    }
    
}
