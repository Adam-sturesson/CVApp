//
//  ExperienceViewController.swift
//  CvApp
//
//  Created by Adam Sturesson on 2019-11-05.
//  Copyright © 2019 Adam Sturesson. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var experiences: [Experience] = []
    var arr: [(String,Experience)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self as? UITableViewDataSource
        
        let experience1 = Experience(image: "\(1)", describingLabel:"Work \(1)", dateLabel: "2015-2019")
        let experience2 = Experience(image: "\(2)",describingLabel: "Work \(2)",dateLabel: "2013-2013")
        let experience3 = Experience(image:"\(3)",describingLabel: "Education \(1)",dateLabel: "2015-2017")
        let experience4 = Experience(image: "\(4)", describingLabel :"Education \(2)", dateLabel:"2018-..")
        
        experiences.append(experience1)
        experiences.append(experience2)
        experiences.append(experience3)
        experiences.append(experience4)
        
        arr.append(("Jobs",experiences[0]))
        arr.append(("Jobs",experiences[1]))
        arr.append(("Education",experiences[2]))
        arr.append(("Education",experiences[3]))
        
        tableView.reloadData()
        
        }
       
    }
extension ExperienceViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return experiences.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as? LifeExperiencesTableViewCell{
            let experience = experiences[indexPath.row]
            cell.ImageInCell.image = UIImage(named:experience.image)
            cell.WorkeNameInCell.text = experience.describingLabel
            cell.datesInCell.text = experience.dateLabel
            
            return cell
        }
        return UITableViewCell()
    }
 
  
    
}
    


