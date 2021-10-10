//
//  RestaurantsListVC.swift
//  jahez pro
//
//  Created by Hassan Yahya on 01/03/1443 AH.
//

import UIKit
class RestaurantsListVC: UIViewController, UITableViewDelegate ,
                         UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restaurantCell =
        tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as! RestaurantCell
       
        let restaurant = restaurants[indexPath.row]
        
        restaurantCell.name.text = restaurant.name
        restaurantCell.type.text = restaurant.type
        restaurantCell.restaurantratingcell.text = "\(restaurant.rating)"
        restaurantCell.restaurantimagecell.image =  UIImage(named: restaurant.logo)
        if restaurant.isOpen {
            restaurantCell.state.text = "open"
        }else{
            restaurantCell.state.text = "closed"
        }
        return restaurantCell
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Restaurant Cell", sender:restaurants)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
   
        if segue.identifier != "Restaurant Cell"{
            return
        }
        
        let restaurantsMenuVC = segue.destination as! RestaurantsMenuVC
        restaurantsMenuVC.restaurant = sender as! Restaurant ??
    }
    
    
    
    
    

    @IBOutlet weak var RestaurantsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        RestaurantsTableView.dataSource = self
        RestaurantsTableView.delegate = self
    }
}
