//
//  ViewController.swift
//  MultipleTableview
//
//  Created by Sabbir Hossain on 1/6/20.
//  Copyright © 2020 Sabbir Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITabBarDelegate {

    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    
    let team : [String] = ["Arsenal","Chelsa","Manchester"]
    
    let ArsenalPlayers : [String] = ["Bangladesh","China","Canada"]
    
    let ChelsaPlayers: [String] = ["BMW","Lamborghini","Bucatti"]
    
    
    let ManchesterPlayers : [String] = ["Yamaha","TVS","Honda"]
    
    var teamReference : String = "Country"
    
    
    let cellIdentifier : String = "cell"
    
    var numberOfTeams : Int = 0
    var numberOfPlayers : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create Dictionary
       // var myDictionary = ["A" : ["Apple","And"],
                            //"B" : ["Bubble","Blow"],
                            //"C" : ["Circle","Cup"],
                            //"D" : ["Do","Done"],
                            //"E" : ["Eagle","End"]]
       // print(myDictionary)
        
        

        
        table1.delegate = self
        table2.delegate = self
        table1.dataSource = self as! UITableViewDataSource
        table2.dataSource = self as! UITableViewDataSource
        
        
       func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            if (tableView.tag == 1)
            {
                numberOfTeams = team.count
                return numberOfTeams
            }
            else if (tableView.tag == 2)
            
            {
               if (teamReference == "Arsenal")
            {
              numberOfPlayers = ArsenalPlayers.count
                
               }
                else if (teamReference == "Chelsa")
                {
                    numberOfPlayers = ChelsaPlayers.count
                }
                else if (teamReference == "Manchester")
                {
                    numberOfPlayers = ManchesterPlayers.count
                }
                
                return numberOfPlayers
                
                }
                
                else
                {
                    return 0
                }

        }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            
            if(tableView.tag == 1){
                cell.textLabel?.text = team[indexPath.row]
            }
            else if (tableView.tag == 2)
            {
                
                if (teamReference == “Arsenal”)
                    {
                        cell.textLabel?.text = ArsenalPlayers[indexPath.row]
                }
                
                else if (teamReference == "Chelsa")
                {
                    cell.textLabel?.text = ChelsaPlayers[indexPath.row]
                }
                else if (teamReference == "Manchester"){
                    cell.textLabel?.text = ManchesterPlayer[index.row]
                }
                
            }
            
            return cell
            
        }
            
}

