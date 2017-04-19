
//
//  settings.swift
//  TickTockCounter
//
//  Created by Mikael Weiss on 1/17/17.
//  Copyright © 2017 Mikael Weiss. All rights reserved.
//

import UIKit
var numberOfTheBackground = 0
// note to self Right now Im working on getting the background to save to user defaults

class settings: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
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
            backgroundDefaults.set(numberOfTheBackground, forKey: "backgroundNumber")
            print("Orenge")
        case 1:
            numberOfTheBackground = 1
            backgroundDefaults.set(numberOfTheBackground, forKey: "backgroundNumber")
            print("Blue")
        case 2:
            numberOfTheBackground = 2
            backgroundDefaults.set(numberOfTheBackground, forKey: "backgroundNumber")
            print("Purple")
        default:
            numberOfTheBackground = 0
            backgroundDefaults.set(numberOfTheBackground, forKey: "backgroundNumber")
            print("orenge")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}
