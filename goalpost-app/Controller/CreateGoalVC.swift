//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 28.11.2022.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var taskTextView: UITextField!
    @IBOutlet weak var taskLongTermBtn  : UIButton!
    @IBOutlet weak var taskShortTermBtn : UIButton!
    @IBOutlet weak var nextBtn          : UIButton!
    
    var taskType: TaskType  = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        taskShortTermBtn.setSelectedColor()
        taskLongTermBtn.setDeselectedColor()
    }

    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        taskShortTermBtn.setSelectedColor()
        taskLongTermBtn.setDeselectedColor()
        taskType = .shortTerm
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        taskLongTermBtn.setSelectedColor()
        taskShortTermBtn.setDeselectedColor()
        taskType = .longTerm
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if taskTextView.text != "" && taskTextView.text != "Write your goal here ..." {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(taskTextView.text!, taskType)
            presentDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
