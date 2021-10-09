//
//  RestaurantMenuVC.swift
//  jahez pro
//
//  Created by Hassan Yahya on 01/03/1443 AH.
//

import UIKit
class RestaurantsMenuVC: UIViewController {
    
    var restaurant: Restaurant?
    
    @IBOutlet var restaurantTableView: UITableView!

    
    @IBOutlet weak var restaurantImagecell: UIImageView!
    
    @IBOutlet weak var restaurantNamecell: UILabel!
    
    @IBOutlet weak var restaurantTypecell: UILabel!


    @IBOutlet weak var restaurantStatecell: UILabel!
    
    @IBOutlet weak var restaurantRatingcell: UILabel!
    
    
    
}
