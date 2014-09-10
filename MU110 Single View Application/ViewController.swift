//
//  ViewController.swift
//  MU110 Single View Application
//
//  Created by Женя on 09.09.14.
//  Copyright (c) 2014 iOS Lab. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    
    var objects = ["Лекция №1",
    "Лекция №2",
    "Лекция №3",
    "Лекция №4",
    "Лекция №5",
    "Лекция №6",
    "Лекция №7",
        "Лекция №8",
        "Лекция №9",
        "Лекция №10"
    ]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        //if (!user.isLogedIn) {
        let loginController: UIViewController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UIViewController
        
        
        navigationController!.presentViewController(loginController, animated: true, completion: nil)
        //}
        */
        
        //println("Test")
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Table View
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        let object = objects[indexPath.row] as NSString
        cell.textLabel?.text = object.description
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = objects[indexPath.row] as NSString
                (segue.destinationViewController as DetailViewController).detailItem = object
            }
        }
    }
    
    
    
}

