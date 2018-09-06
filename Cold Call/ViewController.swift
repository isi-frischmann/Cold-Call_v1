//
//  ViewController.swift
//  Cold Call
//
//  Created by Isabell Frischmann on 9/5/18.
//  Copyright © 2018 Isabell Frischmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    if button is clicked the names should be shown in this field
    @IBOutlet weak var showName: UITextField!
    @IBOutlet weak var showNumber: UITextField!
    
    //    create an array with names
    let names: [String] = ["Isabell", "Manuel", "Franz", "Lucas", "Daisy", "Steffi", "Gitti"]
    
//    when button is clicked show the names with the index who is choosed from the random index
    @IBAction func coldCallPressed(_ sender: UIButton) {
//        create random number for the indexes of the names array and then show the name
        let randomIndexNames = Int(arc4random_uniform(7)) //creates random number from 1 - 6
        let randomNumber = Int(arc4random_uniform(5) + 1) //creates random number from 1 - 5
        
        showName.text = names[randomIndexNames]
        
        showNumber.text = "\(randomNumber)"
        
        if randomNumber == 1 || randomNumber == 2 {
            showNumber.textColor = .red
        }
        if randomNumber == 3 || randomNumber == 4 {
            showNumber.textColor = .orange
        }
        if randomNumber == 5 {
            showNumber.textColor = .green
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

