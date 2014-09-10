//
//  ViewController.swift
//  MU110 Single View Application
//
//  Created by Женя on 09.09.14.
//  Copyright (c) 2014 iOS Lab. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    var objects = [
        "Лекция №1",
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
        
        self.navigationItem.title = "Лекции"
        
        /*
        //if (!user.isLogedIn) {
        let loginController: UIViewController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UIViewController
        
        
        navigationController!.presentViewController(loginController, animated: true, completion: nil)
        //}
        */
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
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
        cell.detailTextLabel?.text = "Описание - \(object.description)"
        return cell
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

