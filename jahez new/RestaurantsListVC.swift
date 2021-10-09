//
//  RestaurantsListVC.swift
//  jahez new
//
//  Created by Maram Al shahrani on 02/03/1443 AH.
//

import UIKit
class RestaurantsListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restaurantCell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as! RestaurantCell
        
        let restaurant = restaurants[indexPath.row]
        
        restaurantCell.reataurantName.text = restaurant.name
        restaurantCell.restaurantType.text = restaurant.type
        restaurantCell.reataurantRate.text = "\(restaurant.rating)"
        restaurantCell.restaurantLogo.image =  UIImage(named: restaurant.logo)
        
        if restaurant.isOpen {
            restaurantCell.restaurantState.text = "open"
        }else{
            restaurantCell.restaurantState.text = "closed"
        }
        return restaurantCell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "restaurantCell", sender:restaurants)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != "restaurantCell"{
            return
        }
        
        let restaurantsMenuVC = segue.destination as! RestaurantMenuVC
        restaurantsMenuVC.restaurant = sender as? Restaurant
    }
    
    
    @IBOutlet weak var restauranttabelview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restauranttabelview.dataSource = self
        restauranttabelview.delegate = self
    }
}

