//
//  Meal.swift
//  FoodTracker
//
//  Created by Casey Stalnaker on 3/3/19.
//  Copyright © 2019 Casey Stalnaker. All rights reserved.
//

import UIKit

class Meal {

//Mark: Properties

var name: String
var photo: UIImage
var rating: Int

    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialization should fail if there is no name or if the rating is negative.
        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.rating = rating
        self.photo = photo ?? UIImage()
    }
}
