//
//  exercise1ViewController.swift
//  Examen-Gpo-Salinas
//
//  Created by Adrian on 3/20/19.
//  Copyright © 2019 Adrian. All rights reserved.
//

import UIKit

class exercise1ViewController: UIViewController {
    
    
    @IBOutlet weak var wordEntry: UITextField!
    @IBOutlet weak var dataEntryH: UITextField!
    @IBOutlet weak var areaLabel: UILabel!
    
    //var dictionary = ["a":]
    //var h
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Ejercicio 1"

        // Do any additional setup after loading the view.
    }

    @IBAction func calcArea(_ sender: UIButton) {
        calcArea()
    }
    
    func calcArea() {
        let entryHTF = dataEntryH.text!
        let entryHtoArray = entryHTF.split(separator: " ")
        
        if entryHtoArray.count < 26 {
            let missNumer = 26 - entryHtoArray.count
            let alert = UIAlertController(title: "Faltan Números", message: "tienes que llegar a 26 numeros, te faltan \(missNumer)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else if entryHtoArray.count > 26 {
            let plussNumber =  entryHtoArray.count - 26
            let alert = UIAlertController(title: "Te sobran Números", message: "tienes que llegar a 26 numeros, te sobran \(plussNumber)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        } else {
                let splitWord = wordEntry.text!
                let splitArray = Array(splitWord.lowercased())
                let totalLetter = splitArray.count
                //print(splitArray)
            
                let dictionary = ["a": Int(entryHtoArray[0])!,
                                  "b": Int(entryHtoArray[1])!,
                                  "c": Int(entryHtoArray[2])!,
                                  "d": Int(entryHtoArray[3])!,
                                  "e": Int(entryHtoArray[4])!,
                                  "f": Int(entryHtoArray[5])!,
                                  "g": Int(entryHtoArray[6])!,
                                  "h": Int(entryHtoArray[7])!,
                                  "i": Int(entryHtoArray[8])!,
                                  "j": Int(entryHtoArray[9])!,
                                  "k": Int(entryHtoArray[10])!,
                                  "l": Int(entryHtoArray[11])!,
                                  "m": Int(entryHtoArray[12])!,
                                  "n": Int(entryHtoArray[13])!,
                                  "o": Int(entryHtoArray[14])!,
                                  "p": Int(entryHtoArray[15])!,
                                  "q": Int(entryHtoArray[16])!,
                                  "r": Int(entryHtoArray[17])!,
                                  "s": Int(entryHtoArray[18])!,
                                  "t": Int(entryHtoArray[19])!,
                                  "u": Int(entryHtoArray[20])!,
                                  "v": Int(entryHtoArray[21])!,
                                  "w": Int(entryHtoArray[22])!,
                                  "x": Int(entryHtoArray[23])!,
                                  "y": Int(entryHtoArray[24])!,
                                  "z": Int(entryHtoArray[25])!]
            
                for (key,value) in dictionary {
                    print("llave: \(key) valor: \(value)")
                }
                var aux = 0
            
                for letter in splitArray {
                    
                    let newString = String(letter)
                    let letterToAssigHigh = dictionary[newString] //21 2 5 21
                    print(letterToAssigHigh!)
                    
                    if letterToAssigHigh! > aux {
                        aux = letterToAssigHigh!
                        print(aux)
                    }
            
                }
                let area = aux * totalLetter
            areaLabel.text = " \(area)mm"
            }
        }
}
/*
 let arrayOne = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7]
 let arraytwo = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,4,4,5,4,5,4,4,4,7]
 */
