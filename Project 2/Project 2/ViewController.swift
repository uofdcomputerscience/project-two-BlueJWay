//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segment1: UISegmentedControl!
    
    @IBOutlet weak var john: UISwitch!
    @IBOutlet weak var paul: UISwitch!
    @IBOutlet weak var george: UISwitch!
    @IBOutlet weak var ringo: UISwitch!
    var switched1 = false
    var switched2 = false
    
    @IBOutlet weak var button1: UIButton!

    @IBAction func johnAndPaulAvailable(){
        if(switched1){
            john.isEnabled = true
            paul.isEnabled = true
        }else{
            john.isEnabled = false
            paul.isEnabled = false
        }
    }
    @IBAction func georgeandRingoAvailable(){
        if(switched2){
            george.isEnabled = true
            ringo.isEnabled = true
        }else{
            george.isEnabled = false
            ringo.isEnabled = false
        }
    }
    @IBAction func switch1Control(){
        if(segment1.selectedSegmentIndex == 0){
            switched1 = true
            switched2 = false
        }else{
            switched2 = true
            switched1 = false
        }
    }
    @IBAction func continue1(){
        if(john.isOn && paul.isOn && george.isOn && ringo.isOn){
            button1.isEnabled = true
        }else{
            button1.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

