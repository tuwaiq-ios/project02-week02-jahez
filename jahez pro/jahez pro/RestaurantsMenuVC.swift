//
//  RestaurantMenuVC.swift
//  jahez pro
//
//  Created by Hassan Yahya on 01/03/1443 AH.
//

import UIKit
class RestaurantsMenuVC : UIViewController, UITableViewDelegate,
                         UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let MenuCell =
        tableView.dequeueReusableCell(withIdentifier: "MenuCll", for: indexPath) as! MenuCell
        
        let food = restaurant.menu[indexPath.row]
        
        MenuCell.restaurantimagemenucell.image = UIImage(named: food.image)
        MenuCell.restaurantpricemenucell.text =  "\(food.price)"
        MenuCell.restaurantfoodmenucell.text = food.name
        
        return MenuCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: " MenuCell", sender:restaurants)
   
    }
    
    var restaurant: Restaurant
    
    @IBOutlet var restaurantTableView: UITableView!

    
    @IBOutlet weak var restaurantImagecell: UIImageView!
    
    @IBOutlet weak var restaurantNamecell: UILabel!
    
    @IBOutlet weak var restaurantTypecell: UILabel!


    @IBOutlet weak var restaurantStatecell: UILabel!
    
    @IBOutlet weak var restaurantRatingcell: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != "MenuCell"{
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantTableView.dataSource = self
        restaurantTableView.delegate = self
    }
}
