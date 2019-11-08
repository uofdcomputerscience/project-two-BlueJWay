//
//  ViewController5.swift
//  Project 2
//
//  Created by Brendan Flood on 11/7/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    var place: String = ""
    @IBOutlet var shameLabel: UILabel!
    func showLabel(){
        if(place == "Texas"){
            shameLabel.isHidden = true
        }else{
            shameLabel.isHidden = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        shameLabel.isHidden = false
        showLabel()
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
