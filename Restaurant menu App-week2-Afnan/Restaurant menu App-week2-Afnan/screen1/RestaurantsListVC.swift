//
//  RestaurantsListVC.swift
//  Restaurant menu App-week2-Afnan
//
//  Created by Fno Khalid on 01/03/1443 AH.
//

import UIKit

class RestaurantsListVC : UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var RestaurantsListVC: UITableView!
  
    override func viewDidLoad() {
       
        RestaurantsListVC.delegate = self
        RestaurantsListVC.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let restaurantCell =
        RestaurantsListVC.dequeueReusableCell(withIdentifier: "RestaurantCell", for:  indexPath) as! RestaurantCell
        
        let restaurant = restaurants[indexPath.row]
        
        restaurantCell.restaurantimage.image = restaurant?.logo
        restaurantCell.restaurantname.text = restaurant!.name
        restaurantCell.restauranttype.text = restaurant?.type
        restaurantCell.restaurantrating.text = "\(restaurant.rating)"
        
        if restaurant.isopen {
            restaurantCell.restaurantisopen.text = "open"
            
        }  else {
            restaurantCell.restaurantisopen.text = "close"
        
        return restaurantCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        let restaurant = restaurants[indexPath.row]
        
        performSegue(withIdentifier: "open-menu", sender: restaurant)
    }
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            super.prepare(for: segue, sender: sender)
            
            if segue.identifier != "restaurantCell"{
                return
                
            }
        }
    }
}
