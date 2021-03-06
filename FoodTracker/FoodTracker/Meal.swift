//
//  Meal.swift
//  FoodTracker
//
//  Created by PRAJAK KHRUASUWAN on 3/4/18.
//  Copyright © 2018 PRAJAK KHRUASUWAN. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int){
//        if name.isEmpty || rating < 0 {
//            return nil
//        }

        guard !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    
}
