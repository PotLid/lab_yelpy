//
//  Restaurant.swift
//  Yelpy
//
//  Created by Anthony Mendez on 8/3/21.
//  Copyright © 2021 memo. All rights reserved.
//

import Foundation

class Restaurant {
    
    // Class variables {name, category, phone, rating, reviews, url, imageUrl}
    var name: String
    var phone: String
    var rating: Double
    var reviews: Int
    var url: URL?
    var imageUrl: URL?
    var category: String
    
    // Constructor
    init(dict:[String:Any]) {
        name = dict["name"] as! String
        category = Restaurant.getMainCategory(dict: dict)
        phone = dict["display_phone"] as! String
        rating = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        url = URL(string: dict["url"] as! String)
        imageUrl = URL(string: dict["image_url"] as! String)
    }
    
    // Extract Main Category
    static func getMainCategory(dict:[String:Any?]) -> String {
        let allCategories = dict["categories"] as! [[String:Any]]
        print(allCategories)
        let mainCategory = allCategories[0]["title"] as! String
        return mainCategory
    }
}
