//
//  ViewController.swift
//  Projet tp
//
//  Created by Raif El Sayed on 07/11/2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource{
    @IBOutlet weak var tabview1: UITableView!
    var myData:[Todo]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...5{
            let nom = "Tache:"+String(i)
            let description = " decsription de la tache"+String(i)
            let d = Todo(nom: nom, description: description)
            myData.append(d)
        }
        tabview1.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)as! TableViewCell
        cell.mynom.text = myData[indexPath.row].nom
        cell.mydescription.text = myData[indexPath.row].description
        return cell
        
    }


}

