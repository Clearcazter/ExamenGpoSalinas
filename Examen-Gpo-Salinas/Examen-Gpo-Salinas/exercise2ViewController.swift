//
//  exercise2ViewController.swift
//  Examen-Gpo-Salinas
//
//  Created by Adrian on 3/20/19.
//  Copyright © 2019 Adrian. All rights reserved.
//

import UIKit

class exercise2ViewController: UIViewController {

    @IBOutlet weak var tareasRobertoDiaTF: UITextField!
    @IBOutlet weak var tareasGenaroTF: UITextField!
    @IBOutlet weak var tareasPreviasPorGerardo: UITextField!
    
    @IBOutlet weak var diasParaRebasarLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcDiasButtonPressed(_ sender: UIButton) {
        let tareasRoberto = Int(tareasRobertoDiaTF.text!)
        let tareasGenaro = Int(tareasGenaroTF.text!)
        let tareasPrevias = Int(tareasPreviasPorGerardo.text!)
        
        var tareasInicialesRoberto = 0
        var tareasInicialesGenaro = 0 + tareasPrevias!
        
        for calc in 0...365 {
            tareasInicialesRoberto += tareasRoberto!
            tareasInicialesGenaro += tareasGenaro!
            if tareasInicialesGenaro < tareasInicialesRoberto {
                let alert = UIAlertController(title: "Si lo alcanza pero", message: "le tomará \(calc + 1) días", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(alert, animated: true)
                return
            }
        }
            let alert = UIAlertController(title: "No lo alcanza", message: "hace falta mas de un año para alcanzarlo", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
    }
    
}
