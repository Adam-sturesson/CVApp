//
//  DataHandler.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-06.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import Foundation
class DataHandler {
    static let instance = DataHandler()
    
    let experiences : [[Experience]] = [[Experience(id:1,image: "\(1)", describingLabel:"Work \(1)", dateLabel: "2015-2019"),Experience(id:2,image: "\(2)",describingLabel: "Work \(2)",dateLabel: "2013-2013")],[Experience(id:3,image:"\(3)",describingLabel: "Education \(1)",dateLabel: "2015-2017"),Experience(id:4,image: "\(4)", describingLabel :"Education \(2)", dateLabel:"2018-..")]]
    
 
    private var selectedExperienceId: Int = 1
    private var section = 0
    func getSelectedExperience()->Experience?{
        if let experience = experiences[section].first(where:{ $0.id == selectedExperienceId}){
            return experience
        }
        return nil
    }
    func setSelectedExperienceId(withIndex indexRow: Int, withIndex indexSection: Int) {
        selectedExperienceId = experiences[indexSection][indexRow].id
        section = indexSection
        
    }
}
