//
//  RestaurantCell.swift
//  Yelpy
//
//  Created by Memo on 5/28/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var starsImage: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var restaurantImage: UIImageView!
    
    
    // Given Properties of a Restaurant Apply to View
    var cell: Restaurant! {
        didSet {
            nameLabel.text = cell.name
            categoryLabel.text = cell.category
            starsImage.image = Stars.dict[cell.rating]!
            reviewsLabel.text = String(cell.reviews)
            phoneLabel.text = cell.phone
            restaurantImage.af.setImage(withURL: cell.imageUrl!)
            restaurantImage.layer.cornerRadius = 10
            restaurantImage.clipsToBounds = true
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
