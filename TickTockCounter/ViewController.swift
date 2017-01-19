//
//  ViewController.swift
//  TickTockCounter
//
//  Created by Mikael Weiss on 1/12/17.
//  Copyright © 2017 Mikael Weiss. All rights reserved.
//

import UIKit
var number = 0

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    var arrayOfBackgrounds = [#imageLiteral(resourceName: "background_1.jpg"), #imageLiteral(resourceName: "background_2.jpg"), #imageLiteral(resourceName: "background_3.jpg")]
    
    @IBOutlet weak var viewBackground: UIImageView!
    
    @IBOutlet weak var counterLable: UILabel!
    
    
    @IBAction func settingsbutton(_ sender: Any) {
        
    }

    @IBAction func addOne(_ sender: Any) {
        number += 1
        counterLable.text = String(number)
        defaults.set(number, forKey: "numberDefaults")
        print(defaults.string(forKey: "numberDefaults")!)
    }
    @IBAction func takeAwayOne(_ sender: Any) {
        number -= 1
        counterLable.text = String(number)
        defaults.set(number, forKey: "numberDefaults")
        print(defaults.string(forKey: "numberDefaults")!)
    }
    
    override func viewDidLoad() {
        if defaults.string(forKey: "numberDefaults") != nil {
            let defaultsText = defaults.string(forKey: "numberDefaults")
            counterLable.text = defaultsText
            number = Int(defaultsText!)!
            }
            
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        viewBackground.image = arrayOfBackgrounds[Int(numberOfTheBackground)]
        
    }


}

