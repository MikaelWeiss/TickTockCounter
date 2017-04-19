//
//  ViewController.swift
//  TickTockCounter
//
//  Created by Mikael Weiss on 1/12/17.
//  Copyright © 2017 Mikael Weiss. All rights reserved.
//

import UIKit
var number = 0
let backgroundDefaults = UserDefaults.standard
class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    
    var arrayOfBackgrounds = [#imageLiteral(resourceName: "background_1.jpg"), #imageLiteral(resourceName: "background_2.jpg"), #imageLiteral(resourceName: "background_3.jpg")]
    
    @IBOutlet weak var viewBackground: UIImageView!
    @IBOutlet weak var counterLable: UILabel!
    @IBAction func changeLable(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            number += 1
            counterLable.text = String(number)
            defaults.set(number, forKey: "numberDefaults")
            print(defaults.string(forKey: "numberDefaults")!)
        case 2:
            number += 10
            counterLable.text = String(number)
            defaults.set(number, forKey: "numberDefaults")
            print(defaults.string(forKey: "numberDefaults")!)
        case 3:
            number = 0
            counterLable.text = String(number)
            defaults.set(number, forKey: "numberDefaults")
            print(defaults.string(forKey: "numberDefaults")!)
        case 4:
            number -= 10
            counterLable.text = String(number)
            defaults.set(number, forKey: "numberDefaults")
            print(defaults.string(forKey: "numberDefaults")!)
        case 5:
            number -= 1
            counterLable.text = String(number)
            defaults.set(number, forKey: "numberDefaults")
            print(defaults.string(forKey: "numberDefaults")!)
        default:
            AlertAction(Title: "Error", Message: "There was a errorr Pleas contact\" campingmikael@icloud.com\"", alerTitle: "OK")
        }
    }
    
    
    override func viewDidLoad() {
        if defaults.string(forKey: "numberDefaults") != nil {
            let defaultsText = defaults.string(forKey: "numberDefaults")
            counterLable.text = defaultsText
            number = Int(defaultsText!)!
        }
        if backgroundDefaults.string(forKey: "backgroundNumber") != nil {
            let defaultsImage = Int(backgroundDefaults.string(forKey: "backgroundNumber")!)
            viewBackground.image = arrayOfBackgrounds[defaultsImage!]
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("memory waring")
    }
    override func viewWillAppear(_ animated: Bool) {
        viewBackground.image = arrayOfBackgrounds[Int(numberOfTheBackground)]
        backgroundDefaults.set(numberOfTheBackground, forKey: "backgroundNumber")
    }
    
    func AlertAction(Title: String, Message: String, alerTitle: String) {
        // create the alert
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: alerTitle, style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
}

