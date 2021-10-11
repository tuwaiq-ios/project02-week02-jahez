//
//  RestaurantCell.swift
//  Restaurant App
//
//  Created by Eth Os on 01/03/1443 AH.
//

import Foundation
import UIKit


class RestaurantCell : UITableViewCell {
    
    var location : Restaurant?
    
    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantType: UILabel!
    @IBOutlet weak var restaurantState: UILabel!
    @IBOutlet weak var restaurantRating: UILabel!
    @IBOutlet weak var restaurantTime: UILabel!

}
