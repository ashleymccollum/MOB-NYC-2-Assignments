//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var tableView: UITableView!
	var values: [String] = []
	

	override func viewDidLoad() {
		super.viewDidLoad()
		textField.delegate = self
		textField.becomeFirstResponder()
		
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return values.count
	}
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        values.append(textField.text)
        textField.text = ""
        textField.resignFirstResponder()
        tableView.reloadData()
        
        return true
    }
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
		
		var cell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell
		
		
				cell.textLabel?.text = values[indexPath.item]
		
		return cell
	}
	

}

