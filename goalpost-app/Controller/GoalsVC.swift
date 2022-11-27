//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 27.11.2022.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onAddTaskBtnPressed(_ sender: Any) {
        print("GoalVC -> onAddTaskBtnPressed() ::: Button was pressed by user.")
    }
    
}

