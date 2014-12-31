//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Panayiotou on 31/12/14.
//  Copyright (c) 2014 Michael Panayiotou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.hidden=false //Hide label
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder() //Hides the keyboard
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal) //changes the text in the button
        
    }

}

