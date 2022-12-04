//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 28.11.2022.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var taskTextView     : UITextView!
    @IBOutlet weak var taskLongTermBtn  : UIButton!
    @IBOutlet weak var taskShortTermBtn : UIButton!
    @IBOutlet weak var nextBtn          : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
