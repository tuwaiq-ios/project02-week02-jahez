//
//  ResturantlistVC.swift
//  HungerStation
//
//  Created by sara al zhrani on 01/03/1443 AH.
//

import UIKit

class RestaurantListVC  : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    RestauranTableView.dataSource = self
    RestauranTableView.delegate = self
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let restaurantCell =
        tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as! RestaurantCell

    }

        let restaurant = resturants[indexPath.row]
        
        
    restaurantCell.name = restaurant.name
    restaurantCell.type.text = resturant.type
    restaurantCell.rateing.text = "\(resturant?.rateing)"
    restaurantCell.imageCell.image = UIImage(named:resturant?.logo )
                              
                              
    if resturant?.isOpen  {
        restaurantCell.State.text  = "open"
        }else {
             resturant?.isOpen {
                 restaurantCell.State.text = "close"
        }
            return
            
        }
    
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "Restaurant Cell", sender: resturants)
       }
    
    
    @IBOutlet weak var tableview: UITableview!
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    
if segue.identifier != "Restaurant Cell"{
            return
    
}
        
        let restaurantsMenuVC = segue.destination as! RestaurantsMenuVC
        restaurantsMenuVC.resturant = sender as! Resturant
        
    
    
        override func viewDidload( )
        super.viewDidLoad()
        
       // RestauranTableView.dataSource= self
       // RestauranTableView.delete= self
        
        
        
        
        }

}
