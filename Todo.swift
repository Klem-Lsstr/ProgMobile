//
//  Todo.swift
//  TP-TodoList
//
//  Created by Clement Lesestre on 07/11/2022.
//

import Foundation

// mettre un nom, une description, etat

class Todo{
    
    var nom: String
    var description: String
    var etat: Bool
    
    init(nom: String, description: String){
        self.nom = nom
        self.description = description
        self.etat = false
    }
    
}
