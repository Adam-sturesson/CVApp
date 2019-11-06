//
//  experience.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-04.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import UIKit

class Experience{
    let image: String
    let describingLabel: String
    let dateLabel : String
    let id : Int
    
    init(id: Int,image : String , describingLabel: String , dateLabel:String){
        self.image = image
        self.describingLabel = describingLabel
        self.dateLabel = dateLabel
        self.id = id
    }
    
}
