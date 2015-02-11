//
//  TableViewController.swift
//  Live Rendering Demo
//
//  Created by Joyce Echessa on 1/19/15.
//  Copyright (c) 2015 Echessa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let bio = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        
        let jane = User(userName: "Jane Doe", userRating: 4, userBio: bio, userAvatar: UIImage(named: "jane.png")!)
        let john = User(userName: "John Doe", userRating: 4, userBio: bio, userAvatar: UIImage(named: "john.png")!)
        let ann = User(userName: "Ann Greene", userRating: 2, userBio: bio, userAvatar: UIImage(named: "ann.png")!)
        let rob = User(userName: "Rob Black", userRating: 0, userBio: bio, userAvatar: UIImage(named: "rob.png")!)
        let sam = User(userName: "Sam Summers", userRating: 5, userBio: bio, userAvatar: UIImage(named: "sam.png")!)
        
        users = [jane, john, ann, rob, sam]
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("userCell", forIndexPath: indexPath) as UITableViewCell
        
        let user = users[indexPath.row]
        cell.textLabel?.text = user.name
        return cell
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "showProfile") {
            let indexPath: NSIndexPath = tableView.indexPathForSelectedRow()!
            let selectedUser: User = users[indexPath.row]
            
            let navController = segue.destinationViewController as UINavigationController
            let vc = navController.viewControllers.first as ViewController
            
            vc.user = selectedUser
            
        }
        
    }

}
