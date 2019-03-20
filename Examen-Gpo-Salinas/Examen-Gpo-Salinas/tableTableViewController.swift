//
//  tableTableViewController.swift
//  Examen-Gpo-Salinas
//
//  Created by Adrian on 3/20/19.
//  Copyright © 2019 Adrian. All rights reserved.
//

import UIKit

class tableTableViewController: UITableViewController {

    let exercises = ["Ejercicio 1", "Ejercicio 2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (exercises.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = exercises[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if 0 == indexPath.row {
            performSegue(withIdentifier: "ex1", sender: nil)
        } else if 1 == indexPath.row{
            performSegue(withIdentifier: "ex2", sender: nil)
        }
    }

}
