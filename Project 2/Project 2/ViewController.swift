//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var title1: UINavigationItem!
    var title1Label = UILabel()
    @IBOutlet var segment1: UISegmentedControl!
    
    @IBOutlet var john: UISwitch!
    @IBOutlet var paul: UISwitch!
    @IBOutlet var george: UISwitch!
    @IBOutlet var ringo: UISwitch!
    
    @IBOutlet var button1: UIButton!

   
    @IBAction func segment1Control(_ sender: UISegmentedControl){
        if(segment1.selectedSegmentIndex == 0){
            johnAndPaul()
        }
        if(segment1.selectedSegmentIndex == 1){
            georgeAndRingo()
        }
    }
    func johnAndPaul(){
        john.isEnabled = true
        paul.isEnabled = true
        john.isHidden = false
        paul.isHidden = false
        george.isHidden = false
        ringo.isHidden = true
        george.isEnabled = true
    }
    func georgeAndRingo(){
        john.isHidden = true
        paul.isHidden = true
        george.isHidden = true
        ringo.isHidden = false
        george.isEnabled = false
        ringo.isEnabled = true
    }
    @IBAction func johnChange(_ sender: UISwitch){
        continue1()
    }
    @IBAction func paulChange(_ sender: UISwitch){
        continue1()
    }
    @IBAction func georgeChange(_ sender: UISwitch){
        continue1()
    }
    @IBAction func ringoChange(_ sender: UISwitch){
        continue1()
    }
    func continue1(){
        if(john.isOn && paul.isOn && george.isOn && ringo.isOn){
            button1.isEnabled = true
        }else{
            button1.isEnabled = false
        }
    }
    

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button1.isEnabled = false
        ringo.isHidden = true
        john.setOn(false, animated: true)
        paul.setOn(false, animated: true)
        george.setOn(false, animated: true)
        ringo.setOn(false, animated: true)
        title1Label.text = "One"
        title1.titleView = title1Label
    }


}

