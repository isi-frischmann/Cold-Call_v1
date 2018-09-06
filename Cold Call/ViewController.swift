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
    
//    create an array with names
    let names: [String] = ["Isabell", "Manuel", "Franz", "Lucas", "Daisy", "Steffi", "Gitti"]

//    when button is clicked show the names with the index who is choosed from the random index
    @IBAction func coldCallPressed(_ sender: UIButton) {
//        print("Button is clicked")
        let randomIndex = Int(arc4random_uniform(UInt32(7)))
        showName.text = names[randomIndex]
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

