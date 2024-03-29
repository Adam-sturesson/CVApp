//
//  CertainExperienceViewController.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-05.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {

    @IBOutlet weak var NavbarTitle: UINavigationItem!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    
    @IBOutlet weak var DateLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let experience: Experience  = DataHandler.instance.getSelectedExperience()!
        
        NavbarTitle.title = experience.describingLabel
        image.image = UIImage(named: "\(experience.image)")
        DescriptionLabel.text = experience.describingLabel
        DateLabel.text = experience.dateLabel
    }
    

}
