//
//  ViewController.swift
//  ToDoList-Lesestre
//
//  Created by Clement Lesestre on 08/12/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!

    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // taches sauvegardees
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}

