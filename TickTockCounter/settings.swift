
//
//  settings.swift
//  TickTockCounter
//
//  Created by Mikael Weiss on 1/17/17.
//  Copyright © 2017 Mikael Weiss. All rights reserved.
//

import UIKit
var numberOfTheBackground = 0
//var textColer = 0
// if i want to add this feacher in later

class settings: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBAction func doneButton(_ sender: Any) {
        
    }
    
    let arrayOfPickturesNumbers = ["Orange", "Blue", "Purple", "Hello There!"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfPickturesNumbers.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayOfPickturesNumbers[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            numberOfTheBackground = 0
            print("Orenge")
//            textColer = 0
        case 1:
            numberOfTheBackground = 1
            print("Blue")
//            textColer = 0
        case 2:
            numberOfTheBackground = 2
            print("Purple")
//            textColer = 1
        default:
            numberOfTheBackground = 0
            print("orenge")
//            textColer = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
