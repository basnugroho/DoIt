//
//  ViewController.swift
//  DoIt
//
//  Created by Baskoro Nugroho on 10/4/16.
//  Copyright © 2016 Bina Raya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //print("ini")
        //print(tasks[indexPath.row])
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "!\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Belajar"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Beli Indomie"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Cuci Mobil"
        task3.important = true
        
        return [task1, task2, task3]
    }

}

