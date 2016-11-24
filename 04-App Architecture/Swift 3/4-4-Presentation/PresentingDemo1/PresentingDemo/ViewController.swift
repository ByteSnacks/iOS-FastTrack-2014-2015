//
//  ViewController.swift
//  PresentingDemo
//
//  Created by Nicholas Outram on 14/01/2016.
//  Copyright © 2016 Plymouth University. All rights reserved.
//

import UIKit



class ViewController: UIViewController, ModalViewController1Protocol {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "DEMO1" {
            
            if let vc = segue.destinationViewController as? ModalViewController1 {
                
                vc.titleText = "DEMO 1"
                vc.delegate = self
            }
            
        }
        
    }
    
    //Call back
    func dismissWithStringData(str: String) {
      self.dismissViewControllerAnimated(true) {
         self.resultLabel.text = str
      }
    }
}

