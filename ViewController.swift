//
//  ViewController.swift
//  TP-TodoList
//
//  Created by Clement Lesestre on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var myData = [Todo]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myData", for: indexPath) as! TableViewCell
                cell.taskname.text = "Tache"
                cell.taskdescription.text = "description"
                return cell
    }
    

    @IBOutlet weak var TableView1: UITableView!
    @IBOutlet weak var celltitle: UIView!
    @IBOutlet weak var celltask: UIView!
    @IBOutlet weak var buttonadd: UIButton!
    @IBOutlet weak var labeltitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labeltitle.text = "Ma To-Do Liste"
        celltitle.backgroundColor = UIColor.gray
        myData.append(Todo(nom: "courses",description: "demain"))
        TableView1.dataSource=self
    }

    
    /*@IBAction func buttonadd( sender: UIButton){
        //ajouter une tache dans la todolist
        //var task: Todo
        //ouvrir la vue de création de tache
        
    }*/

}

