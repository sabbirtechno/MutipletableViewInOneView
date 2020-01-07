//
//  ViewController.swift
//  MultipleTableview
//
//  Created by Sabbir Hossain on 1/6/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  
    var cellIndentifier : String = "cell"
    
    var numberOfRows :  Int = 0
    
    var item = [String]()
    
    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    
    //Create Dictionary
    let data = ["A" : ["Welcome","Sabbir","Hossain","Done"],
                "B" : ["Bubble","Blow"],
                "C" : ["Circle","Cup"],
                "D" : ["Do","Done"],
                "E" : ["Eagle","End"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table1.delegate = self
        table1.delegate = self
        table2.dataSource = self
        table2.dataSource = self
        
       // print(myDictionary)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView.tag == 1{
            print("In tableView numberofrows")
            print(data)
            numberOfRows = data.count
            print(numberOfRows)
            return numberOfRows
        }
        else if tableView.tag == 2{
            print("In tableView numberofrows")
            print(data)
            numberOfRows = item.count
            return numberOfRows
        }
        
        else {
            return 0
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath as IndexPath)
        if tableView.tag == 1{
        cell.textLabel?.text = Array(data.keys)[indexPath.row]
            
    }
        else if tableView.tag == 2{
            cell.textLabel?.text = item[indexPath.row]
        }
        
     return cell
        
}
    
    
    //For Click
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if tableView.tag == 1 {
    print(Array(data.values)[indexPath.row])
    
        item = Array(data.values)[indexPath.row]
    }
        
        table2.reloadData()
 }
    
    
}
