//
//  ViewController.swift
//  Exercise01-RedBlue
//
//  Created by Felix Barros on 11/24/15.
//  Copyright © 2015 Bits That Matter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hideBlueBubbleButton: UIButton!
    @IBOutlet weak var hideRedBubbleButton: UIButton!
    @IBOutlet weak var blueBubbleImage: UIImageView!
    @IBOutlet weak var redBubbleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueBubbleButtonTapped(sender: AnyObject) {
        blueBubbleImage.hidden = true
        hideBlueBubbleButton.hidden = true
    }

    @IBAction func hideRedBubbleButtonTapped(sender: AnyObject) {
        redBubbleImage.hidden = true
        hideRedBubbleButton.hidden = true
    }
}

