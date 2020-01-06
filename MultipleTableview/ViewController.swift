//
//  ViewController.swift
//  MultipleTableview
//
//  Created by Sabbir Hossain on 1/6/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create Dictionary
        
        var myDictionary = ["A" : ["Apple","And"],
                            "B" : ["Bubble","Blow"],
                            "C" : ["Circle","Cup"],
                            "D" : ["Do","Done"],
                            "E" : ["Eagle","End"]]
    
        print(myDictionary)
        
      
    }
    
}

