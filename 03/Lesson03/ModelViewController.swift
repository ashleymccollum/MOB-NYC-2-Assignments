//
//  ModelViewController.swift
//  Lesson03
//
//  Created by Ashley McCollum on 3/8/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func clickDismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }


    
}

