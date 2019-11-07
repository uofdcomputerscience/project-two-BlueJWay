//
//  ViewController2ViewController.swift
//  Project 2
//
//  Created by Brendan Flood on 11/6/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet var title2: UINavigationItem!
    var title2Label = UILabel()
    @IBOutlet var slider: UISlider!
    @IBOutlet var stepper: UIStepper!
    @IBOutlet var button2: UIButton!
    @IBOutlet var stepperLabel: UILabel!
    @IBOutlet var sliderLabel: UILabel!
    
    @IBAction func sliderIncrement(_ sender: UISlider){
        sliderLabel.text = Int(sender.value).description
    }
    @IBAction func stepperIncrement(_ sender: UIStepper){
        stepperLabel.text = Int(sender.value).description
    }
    @IBAction func theSlider(_ sender: UISlider){
        continue2()
    }
    @IBAction func theStepper(_ sender: UIStepper){
        continue2()
    }
    
    func continue2(){
        if(Int(slider.value) == 5 && stepper.value == 5){
            button2.isEnabled = true
        }else{
            button2.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = 0
        slider.maximumValue = 10
        stepper.value = 0
        stepper.maximumValue = 10
        button2.isEnabled = false
        title2Label.text = "Two"
        title2.titleView = title2Label
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
