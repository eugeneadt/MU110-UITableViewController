//
//  ViewController.swift
//  MU110 Single View Application
//
//  Created by Женя on 09.09.14.
//  Copyright (c) 2014 iOS Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //if (!user.isLogedIn) {
        let loginController: UIViewController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UIViewController
        
        
        navigationController!.presentViewController(loginController, animated: true, completion: nil)
        //}
        
        println("Test")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

