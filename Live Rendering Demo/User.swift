//
//  User.swift
//  Live Rendering Demo
//
//  Created by Joyce Echessa on 1/19/15.
//  Copyright (c) 2015 Echessa. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var name: String!
    var rating: Int!
    var bio: String!
    var avatar: UIImage!
    
    init(userName: String, userRating: Int, userBio: String, userAvatar: UIImage) {
        self.name = userName
        self.rating = userRating
        self.bio = userBio
        self.avatar = userAvatar
        super.init()
    }
   
}
