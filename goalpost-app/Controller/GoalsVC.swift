//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Andrew Pylo on 27.11.2022.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isHidden = false
    }


    @IBAction func onAddTaskBtnPressed(_ sender: Any) {
        print("GoalVC -> onAddTaskBtnPressed() ::: Button was pressed by user.")
    }
    
}
//
// MARK: Table View Creation
//
extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as? TaskCell
        else {
            return UITableViewCell()
        }
        cell.updateCell(desc: "Eat salad once.", type: .longTerm, progress: 2)
        return cell
    }
}
