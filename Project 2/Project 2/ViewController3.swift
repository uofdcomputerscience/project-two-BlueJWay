//
//  ViewController3.swift
//  Project 2
//
//  Created by Brendan Flood on 11/6/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit
import Foundation

class ViewController3: UIViewController {
    @IBOutlet var title3: UINavigationItem!
    var title3Label = UILabel()
    @IBOutlet var spinner: UIActivityIndicatorView! = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
    
    @IBOutlet var picker: UIDatePicker!
    @IBOutlet var merry: UILabel!
    @IBOutlet var christmas: UILabel!
    @IBOutlet var button3: UIButton!
    @IBAction func rightDate(_ sender: UIDatePicker){
        isChristmas()
    }
    func isChristmas(){
        if(Calendar.current.isDate(picker.date, equalTo: Calendar.current.date(from: DateComponents(year: 2019, month: 12, day: 25))!, toGranularity: .day)){
            button3.isEnabled = true
            merry.isEnabled = true
            christmas.isEnabled = true
            spinner.stopAnimating()
        }else{
            spinner.startAnimating()
            merry.isEnabled = false
            christmas.isEnabled = false
            button3.isEnabled = false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        button3.isEnabled = false
        picker.datePickerMode = UIDatePicker.Mode.date
        merry.isEnabled = false
        christmas.isEnabled = false
        spinner.startAnimating()
        spinner.hidesWhenStopped = true
        spinner.color = UIColor(red: 256, green: 0, blue: 0, alpha: 256)
        title3Label.text = "Three"
        title3.titleView = title3Label
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
