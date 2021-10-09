//
//  RestaurantsListVC.swift
//  jaheez
//
//  Created by ibrahim asiri on 29/02/1443 AH.
//

import UIKit

class RestaurantsListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var reataurantTV: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let restCell = tableView.dequeueReusableCell(withIdentifier: "restList", for: indexPath) as! RestaurantCell
        
        let restaurant = restaurants[indexPath.row]
        
        restCell.nameLabel.text = restaurant.name
        restCell.logoLabel.image = UIImage(named: restaurant.image)
        restCell.rateLabel.text = "\(restaurant.rateing)"
        restCell.typeLabel.text = restaurant.type
        
        if restaurant.state{
            restCell.stateLabel.text = "مفتوح"
        }
        else{
            restCell.stateLabel.text = "مغلق"
        }
        return restCell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reataurantTV.delegate = self
        reataurantTV.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "openMenu", sender: restaurants)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
//        if segue.identifier != "openMenu"{
//            return
//        }
        
        if let restaurentMenu = segue.destination as? RestaurantMenuVC {
        
            restaurentMenu.restaurent = sender as? Restaurant
        
    }
}

}
