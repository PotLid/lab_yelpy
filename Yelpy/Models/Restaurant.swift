//
//  Restaurant.swift
//  Yelpy
//
//  Created by JunWoo Park on 9/14/21.
//  Copyright © 2021 memo. All rights reserved.
//

import Foundation

class Restaurant {
    // Variables
    // name, category, phone, rating, review, url, image
    var name: String
    var category: String
    var phone: String
    var rating: Double
    var reviews: Int
    var url: URL?
    var imageUrl: URL?
    
    // Contrcutor
    init(dict: [String: Any]) {
        name = dict["name"] as! String
        phone = dict["phone"] as! String
        rating = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        url = URL(string: dict["url"] as! String)
        imageUrl = URL(string: dict["image_url"] as! String)
        
        category = Restaurant.getMainCategory(dict: dict)
    }
    
    // Methods
    static func getMainCategory(dict: [String: Any]) -> String {
        let all_categories =  dict["categories"] as! [[String: Any]]
        let first_category = all_categories[0]
        let title = first_category["title"] as! String
        return title
    }
}
