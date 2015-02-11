//
//  ViewController.swift
//  Live Rendering Demo
//
//  Created by Joyce Echessa on 1/19/15.
//  Copyright (c) 2015 Echessa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userRating: UILabel!
    @IBOutlet weak var userBio: UITextView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (user != nil) {
            userName.text = user.name
            userRating.text = String(user.rating)
            userBio.text = user.bio
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

