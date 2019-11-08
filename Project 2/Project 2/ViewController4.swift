//
//  ViewController4.swift
//  Project 2
//
//  Created by Brendan Flood on 11/6/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    
    struct stateThing{
        var state: String
        var capital: String
        init(state: String, capital: String){
            self.state = state
            self.capital = capital
        }
        
    }
    
    
    
    
    let states = [stateThing(state: "Alabama", capital: "Montgomery"), stateThing(state: "Alaska", capital: "Juneau"), stateThing(state: "Arizona", capital: "Phoenix"), stateThing(state: "Arkansas", capital: "Little Rock"), stateThing(state: "California", capital: "Sacramento"), stateThing(state: "Colorado", capital: "Denver"), stateThing(state: "Connecticut", capital: "Hartford"), stateThing(state: "Delaware", capital: "Dover"), stateThing(state: "Florida", capital: "Tallahassee"), stateThing(state: "Georgia", capital: "Atlanta"), stateThing(state: "Hawaii", capital: "Honolulu"), stateThing(state: "Iowa", capital: "Boise"), stateThing(state: "Idaho", capital: "Springfield"), stateThing(state: "Illinois", capital: "Indianapolis"), stateThing(state: "Indiana", capital: "Des Moines"), stateThing(state: "Kansas", capital: "Topeka"), stateThing(state: "Kentucky", capital: "Frankfort"), stateThing(state: "Louisiana", capital: "Baton Rouge"), stateThing(state: "Massachusetts", capital: "Augusta"), stateThing(state: "Maryland", capital: "Annapolis"), stateThing(state: "Maine", capital: "Boston"), stateThing(state: "Michigan", capital: "Lansing"), stateThing(state: "Minnesota", capital: "St. Paul"), stateThing(state: "Missouri", capital: "Jackson"), stateThing(state: "Mississippi", capital: "Jefferson City"), stateThing(state: "Montana", capital: "Helena"), stateThing(state: "North Carolina", capital: "Lincoln"), stateThing(state: "North Dakota", capital: "Carson City"), stateThing(state: "Nebraska", capital: "Concord"), stateThing(state: "New Hampshire", capital: "Trenton"), stateThing(state: "New Jersey", capital: "Santa Fe"), stateThing(state: "New Mexico", capital: "Albany"), stateThing(state: "Nevada", capital: "Raleigh"), stateThing(state: "New York",capital: "Bismarck"), stateThing(state: "Ohio", capital: "Columbus"), stateThing(state: "Oklahoma", capital: "Oklahoma City"), stateThing(state: "Oregon", capital: "Salem"), stateThing(state: "Pennsylvania", capital: "Harrisburg"), stateThing(state: "Rhode Island", capital: "Providence"), stateThing(state: "South Carolina", capital: "Columbia"), stateThing(state: "South Dakota", capital: "Pierre"), stateThing(state: "Tennessee", capital: "Nashville"), stateThing(state: "Texas", capital: "Austin"), stateThing(state: "Utah",capital: "Salt Lake City"), stateThing(state: "Virginia", capital: "Richmond"), stateThing(state: "Vermont", capital: "Montpelier"), stateThing(state: "Washington", capital: "Olympia"), stateThing(state: "Wisconsin", capital: "Charleston"), stateThing(state: "West Virginia", capital: "Madison"), stateThing(state: "Wyoming", capital: "Cheyenne")]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {

            // Row count: rows equals array length.
            return states.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
        forComponent component: Int) -> String? {

            // Return a string from the array for this row.
        return states[row].state
    }
    
    
    @IBOutlet var title4: UINavigationItem!
    var title4Label = UILabel()
    
    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet var capitalField: UITextField!
    @IBOutlet var finishButton: UIButton!
    
    
    @IBAction func textFieldEditingDidChange(_ sender: UITextField) {
        if(capitalField.text == states[statePicker.selectedRow(inComponent: 0)].capital){
            finishButton.isEnabled = true
        }else{
            finishButton.isEnabled = false
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController5
        {
            let vc = segue.destination as? ViewController5
            vc?.place = states[statePicker.selectedRow(inComponent: 0)].state
        }
    }



    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        resignFirstResponder()
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
