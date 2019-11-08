//
//  EXP.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-08.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import Foundation
class Experience{
    let id:Int
    let image:String
    let describingLabel: String
    let dateLabel: String
  
  init(id: Int, image: String, describingLabel:String, dateLabel:String){
      self.id = id
      self.image = image
      self.describingLabel = describingLabel
      self.dateLabel = dateLabel
  }
}
