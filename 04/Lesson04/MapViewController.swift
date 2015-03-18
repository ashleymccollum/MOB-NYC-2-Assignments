//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var firstTextView: UITextField!
    @IBOutlet weak var secondTextView: UITextField!
	@IBOutlet weak var tableView: UITableView!
	
	var dict: [String : String] = Dictionary()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		firstTextView.delegate = self
		secondTextView.delegate = self
		tableView.dataSource = self
		tableView.delegate = self
		
		NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardUp:"), name: UIKeyboardWillShowNotification, object: nil)

	}
	
	func keyboardUp(notification: NSNotification){
		firstTextView.backgroundColor = UIColor.blueColor()
		secondTextView.backgroundColor = UIColor.blueColor()
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dict.count
	}
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("dictCell") as UITableViewCell
        
        let key = dict.keys.array[indexPath.row]
        cell.textLabel?.text = key
        cell.detailTextLabel?.text = dict[key]
        
        return cell
    }
	
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		if textField == secondTextView{
			dict[firstTextView.text] = secondTextView.text
		}
		
		firstTextView.backgroundColor = UIColor.redColor()
		secondTextView.backgroundColor = UIColor.redColor()
		textField.resignFirstResponder()
		tableView.reloadData()
		
		return true
	}

	

}
