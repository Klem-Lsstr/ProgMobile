//
//  TableViewCell.swift
//  TP-TodoList
//
//  Created by Clement Lesestre on 07/11/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var taskname: UILabel!
    @IBOutlet weak var taskdescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
