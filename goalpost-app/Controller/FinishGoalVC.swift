//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 11.12.2022.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var taskDesc: String!
    var taskType: TaskType!
    
    func initData (_ description: String, _ type: TaskType) {
        self.taskDesc = description
        self.taskType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createBtn.bindToKeyboard()
    }


    @IBAction func createBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
