//
//  ViewController4.swift
//  Project 2
//
//  Created by Brendan Flood on 11/6/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {

            // Row count: rows equals array length.
            return stateData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
        forComponent component: Int) -> String? {

            // Return a string from the array for this row.
            return stateData[row]
    }
    
    
    @IBOutlet var title4: UINavigationItem!
    var title4Label = UILabel()
    
    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet var capitalField: UITextField!
    @IBOutlet var finishButton: UIButton!
    @IBAction func isCapital(_ sender: UITextField){
        if(capitalField.text == stateCapitals[statePicker.selectedRow(inComponent: 0)] && capitalField.isEditing == false){
            finishButton.isEnabled = true
        }else{
            finishButton.isEnabled = false
        }
    }
    
    @IBAction func textFieldEditingDidChange(_ sender: UITextField) {
        
    }
    
    
    let stateData: [String] = ["Alabama", "Alaska",
    "Arkansas",
    "Arizona",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "Florida",
    "Georgia",
    "Hawaii",
    "Iowa",
    "Idaho",
    "Illinois",
    "Indiana",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Massachusetts",
    "Maryland",
    "Maine",
    "Michigan",
    "Minnesota",
    "Missouri",
    "Mississippi",
    "Montana",
    "North Carolina",
    "North Dakota",
    "Nebraska",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "Nevada",
    "New York",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Virginia",
    "Virgin Islands",
    "Vermont",
    "Washington",
    "Wisconsin",
    "West Virginia",
    "Wyoming"]
    
    var stateCapitals = ["Montgomery", "Juneau", "Phoenix", "Little Rock", "Sacramento", "Denver", "Hartford", "Dover", "Tallahassee", "Atlanta", "Honolulu", "Boise", "Springfield", "Indianapolis", "Des Moines", "Topeka", "Frankfort", "Baton Rouge", "Augusta", "Annapolis", "Boston", "Lansing", "St. Paul", "Jackson", "Jefferson City", "Helena", "Lincoln", "Carson City", "Concord", "Trenton", "Santa Fe", "Albany", "Raleigh", "Bismarck", "Columbus", "Oklahoma City", "Salem", "Harrisburg", "Providence", "Columbia", "Pierre", "Nashville", "Austin", "Salt Lake City", "Montpelier", "Richmond", "Olympia", "Charleston", "Madison", "Cheyenne"]


    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Editing is about to begin")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.backgroundColor = UIColor.white
        capitalField.isEnabled = true
        
        print("Editing is begun")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Editing is about to end")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Editing ended")
        textField.backgroundColor = UIColor.white
        }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
        return true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title4Label.text = "Four"
        title4.titleView = title4Label
        //pickerView(statePicker, titleForRow: 50, forComponent: 0)
        statePicker.delegate = self as UIPickerViewDelegate
        statePicker.dataSource = self
        finishButton.isEnabled = false
        capitalField.placeholder = "Type in the state's capital"
        capitalField.delegate = self as UITextFieldDelegate
        //self.statePicker.delegate = (self as! UIPickerViewDelegate)
        capitalField.addTarget(self, action: #selector(textFieldEditingDidChange), for: UIControl.Event.editingChanged)
        
        textFieldShouldBeginEditing(capitalField)
        textFieldDidBeginEditing(capitalField)
        //capitalField.becomeFirstResponder()
        textFieldShouldEndEditing(capitalField)
        textFieldDidEndEditing(capitalField)
        
        
        
        
        

        
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
