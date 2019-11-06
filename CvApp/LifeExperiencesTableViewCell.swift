//
//  LifeExperiencesTableViewCell.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-04.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import UIKit

class LifeExperiencesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ImageInCell: UIImageView!
    
    @IBOutlet weak var WorkeNameInCell: UILabel!
    
    @IBOutlet weak var datesInCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
