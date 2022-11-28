//
//  TaskCell.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 27.11.2022.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var descriptionLbl   : UILabel!
    @IBOutlet weak var typeLbl          : UILabel!
    @IBOutlet weak var progressLbl      : UILabel!
    
    func updateCell (desc: String, type: TaskType, progress: Int) {
        self.descriptionLbl.text = desc
        self.typeLbl.text        = type.rawValue
        self.progressLbl.text    = String (describing: progress)
    }
}
