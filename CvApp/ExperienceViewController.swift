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
    
    var data:[[Experience]] = [[]]
    
    let headerTitles = ["Jobs","Education"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
        
        tableView.reloadData()
        
        }
    }

extension ExperienceViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < headerTitles.count {
            return headerTitles[section]
        }
        return nil
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataHandler.instance.experiences.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataHandler.instance.experiences[section].count
       }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as? LifeExperiencesTableViewCell{
            let experience: Experience=DataHandler.instance.experiences[indexPath.section][indexPath.row]
            cell.ImageInCell.image = UIImage(named: experience.image)
            cell.WorkeNameInCell.text = experience.describingLabel
            cell.datesInCell.text = experience.dateLabel

            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        DataHandler.instance.setSelectedExperienceId(withIndex: indexPath.row,withIndex: indexPath.section)
        performSegue(withIdentifier: "ToDetailview", sender: self)
    }
    
}
    


